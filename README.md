# ResourceGenerator
앱을 개발하면서 Image, Color, String 등 관리에 대한 고민을 많이 하게 됩니다.

현재 지마켓의 경우 String 은 Build Phase 에 스크립트를 통해 Localizable.strings 파일을 읽어 들여 struct 를 만들어서 관리를 하고 있습니다 (auto complete 로 오타/에러를 줄여줌).

Image 나 Color 도 asset 으로 관리를 하게 되면 불러올 때 이름을 string 으로 불러와 로드해야 되는 문제가 있습니다.

여기서 문제라고 하면... string 오타로 인한 버그, 실수가 발생할 수 있다는 의미입니다.



하지만 이미 많은 오픈소스로 이러한 문제를 해결한 라이브러리가 많이 존재합니다.

가장 유명한 2가지는 [Rswift](https://github.com/mac-cain13/R.swift) 와 [SwiftGen](https://github.com/SwiftGen/SwiftGen) 입니다.

살펴보면 해당 라이브러리는 기능도 다양하고 여러가지를 지원하는 것을 확인할 수 있습니다.



그러다 문득 굳이 저렇게 많은 기능을 사용하지 않는다면 차라리 compact 한 버전으로 존재하면 좋을 것 같다는 생각을 들어 직접 구현해 보기로 했습니다.

먼저 생각한 컨셉은

1. 가벼워야 함
2. 간단해야 함
3. 프로그램 설치 등 하지 않고 가능했으면 함 (필요하면 파일 하나 정도는....)
4. String 은 .strings 파일로 관리가 되어야 함
5. Image, Color 는 asset 으로 관리가 되어야 함

을 염두에 두고 만들었습니다.

기본적으로 Command line tool 을 이용해서 만들도록 하겠습니다!

[Blog](https://bbiguduk.github.io/swift/script/Resource_Generator/) 에 자셓 정리해뒀습니다.
