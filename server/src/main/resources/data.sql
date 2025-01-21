INSERT INTO Article (title, subtitle, created_date, tags, category, content)
VALUES ('타입스크립트 톺아보기', '예상 독자: github actions workflow를 한번도 작성해 본 적이 없는 사람, 공룡',
        '2023-01-15', 'typescript,programming,javascript', 'client',
        '## DTO?
 > DTO란 **Data Transfer Object**의 약자로,' ||
        '**계층 간 데이터 전송을 위해 도메인 모델 대신 사용되는 객체**이다. 이때, 계층이란 Presentation(View, Controller), Business(Service), Persistence(DAO, Repository) 등을 의미한다.

 DTO는 순수하게 데이터를 저장하고, 데이터에 대한 getter, setter 만을 가져야한다고 한다. 위키피디아에 따르면 **DTO는 어떠한 비즈니스 로직을 가져서는 안되며**, 저장, 검색, 직렬화, 역직렬화 로직만을 가져야 한다고 한다.

 # **도메인 대신 DTO를 사용하면 좋은 이유**

 DTO 대신 도메인 모델을 계층간 전달에 사용하면, UI 계층에서 도메인 모델의 메소드를 호출하거나 상태를 변경시킬 수 있다. 또한 UI화면마다 사용하는 도메인 모델의 정보는 상이하다. 하지만 도메인 모델은 UI에 필요하지 않은 정보까지 가지고 있다. 이런 모든 도메인 모델 속성이 외부에 노출되면 보안 문제가 발생할 수 있다. **즉, 도메인 모델을 캡슐화 하여 보호할 수 있다.**

 또한 도메인 모델을 계층간 전송에 사용하면, 모델과 뷰가 강하게 결합될 수 있다. 뷰의 요구사항 변화로 도메인의 코드를 변경해야할 일이 생기는 것은 좋지 않다. **DTO를 사용하면 이 결합을 느슨하게 만들 수 있다.**

 1. **DTO Class:** A plain Java class that holds data attributes but no business logic. For instance, a `CustomerDetailsDTO` might contain fields like `name`, `email`, `mobileNum`, `accountNumber`, `accountType`, and `branchAddress`.

 ## **예제 1: API 응답 단순화**

 많은 애플리케이션에서 엔티티에 저장된 데이터는 클라이언트가 필요로 하는 것보다 더 자세할 수 있습니다. DTO를 사용하면 API 응답을 조정하여 필요한 데이터만 포함할 수 있습니다.

 ex) 도메인은 이름 , 가격, 색상, 재고 여부, 디스크립션 속성이 있지만 실제 클라이언트는 api로 이름과 가격만 받기를 원하는 경우

 [Leveraging the Data Transfer Object (DTO Pattern in Spring Boot: Enhancing Data Transfer Efficiency](https://medium.com/@ksaquib/leveraging-the-data-transfer-object-dto-pattern-in-spring-boot-enhancing-data-transfer-efficiency-5bd2dc488d0d)

 - 안녕하세요
     - hello
     - :3
     - hi
 - 고양이
 1. 냠냠
 2. 챱챱

 ```java
 test
 test
 good
 ```
 '),
       ('React Hooks 이해하기', 'The Basics of React Hooks', '2023-02-22', '',
        'problem-solving',
        '# DTO?

 DTO란 **Data Transfer Object**의 약자로, ||
        >>    **계층 간 데이터 전송을 위해 도메인 모델 대신 사용되는 객체**이다. 이때, 계층이란 Presentation(View, Controller), Business(Service), Persistence(DAO, Repository) 등을 의미한다.

 DTO는 순수하게 데이터를 저장하고, 데이터에 대한 getter, setter 만을 가져야한다고 한다. 위키피디아에 따르면 **DTO는 어떠한 비즈니스 로직을 가져서는 안되며**, 저장, 검색, 직렬화, 역직렬화 로직만을 가져야 한다고 한다.

 # **도메인 대신 DTO를 사용하면 좋은 이유**

 DTO 대신 도메인 모델을 계층간 전달에 사용하면, UI 계층에서 도메인 모델의 메소드를 호출하거나 상태를 변경시킬 수 있다. 또한 UI화면마다 사용하는 도메인 모델의 정보는 상이하다. 하지만 도메인 모델은 UI에 필요하지 않은 정보까지 가지고 있다. 이런 모든 도메인 모델 속성이 외부에 노출되면 보안 문제가 발생할 수 있다. **즉, 도메인 모델을 캡슐화 하여 보호할 수 있다.**

 또한 도메인 모델을 계층간 전송에 사용하면, 모델과 뷰가 강하게 결합될 수 있다. 뷰의 요구사항 변화로 도메인의 코드를 변경해야할 일이 생기는 것은 좋지 않다. **DTO를 사용하면 이 결합을 느슨하게 만들 수 있다.**

 1. **DTO Class:** A plain Java class that holds data attributes but no business logic. For instance, a `CustomerDetailsDTO` might contain fields like `name`, `email`, `mobileNum`, `accountNumber`, `accountType`, and `branchAddress`.

 ## **예제 1: API 응답 단순화**

 많은 애플리케이션에서 엔티티에 저장된 데이터는 클라이언트가 필요로 하는 것보다 더 자세할 수 있습니다. DTO를 사용하면 API 응답을 조정하여 필요한 데이터만 포함할 수 있습니다.

 ex) 도메인은 이름 , 가격, 색상, 재고 여부, 디스크립션 속성이 있지만 실제 클라이언트는 api로 이름과 가격만 받기를 원하는 경우

 [Leveraging the Data Transfer Object (DTO Pattern in Spring Boot: Enhancing Data Transfer Efficiency](https://medium.com/@ksaquib/leveraging-the-data-transfer-object-dto-pattern-in-spring-boot-enhancing-data-transfer-efficiency-5bd2dc488d0d)

 - 안녕하세요
     - hello
     - :3
     - hi
 - 고양이
 1. 냠냠
 2. 챱챱

 ```java
 test
 test
 good
 ```
 '),
       ('CSS 더 잘 쓰는 방법', 'Styling Like a Pro', '2023-03-05', 'css,design,frontend',
        'client',
        '# DTO?

 DTO란 **Data Transfer Object**의 약자로, **계층 간 데이터 전송을 위해 도메인 모델 대신 사용되는 객체**이다. 이때, 계층이란 Presentation(View, Controller), Business(Service), Persistence(DAO, Repository) 등을 의미한다.

 DTO는 순수하게 데이터를 저장하고, 데이터에 대한 getter, setter 만을 가져야한다고 한다. 위키피디아에 따르면 **DTO는 어떠한 비즈니스 로직을 가져서는 안되며**, 저장, 검색, 직렬화, 역직렬화 로직만을 가져야 한다고 한다.

 # **도메인 대신 DTO를 사용하면 좋은 이유**

 DTO 대신 도메인 모델을 계층간 전달에 사용하면, UI 계층에서 도메인 모델의 메소드를 호출하거나 상태를 변경시킬 수 있다. 또한 UI화면마다 사용하는 도메인 모델의 정보는 상이하다. 하지만 도메인 모델은 UI에 필요하지 않은 정보까지 가지고 있다. 이런 모든 도메인 모델 속성이 외부에 노출되면 보안 문제가 발생할 수 있다. **즉, 도메인 모델을 캡슐화 하여 보호할 수 있다.**

 또한 도메인 모델을 계층간 전송에 사용하면, 모델과 뷰가 강하게 결합될 수 있다. 뷰의 요구사항 변화로 도메인의 코드를 변경해야할 일이 생기는 것은 좋지 않다. **DTO를 사용하면 이 결합을 느슨하게 만들 수 있다.**

 1. **DTO Class:** A plain Java class that holds data attributes but no business logic. For instance, a `CustomerDetailsDTO` might contain fields like `name`, `email`, `mobileNum`, `accountNumber`, `accountType`, and `branchAddress`.

 ## **예제 1: API 응답 단순화**

 많은 애플리케이션에서 엔티티에 저장된 데이터는 클라이언트가 필요로 하는 것보다 더 자세할 수 있습니다. DTO를 사용하면 API 응답을 조정하여 필요한 데이터만 포함할 수 있습니다.

 ex) 도메인은 이름 , 가격, 색상, 재고 여부, 디스크립션 속성이 있지만 실제 클라이언트는 api로 이름과 가격만 받기를 원하는 경우

 [Leveraging the Data Transfer Object (DTO Pattern in Spring Boot: Enhancing Data Transfer Efficiency](https://medium.com/@ksaquib/leveraging-the-data-transfer-object-dto-pattern-in-spring-boot-enhancing-data-transfer-efficiency-5bd2dc488d0d)

 - 안녕하세요
     - hello
     - :3
     - hi
 - 고양이
 1. 냠냠
 2. 챱챱

 ```java
 test
 test
 good
 ```
 '),
       ('Node.js로 REST API 만들기', 'A Guide to API Development', '2023-04-10',
        'node.js,api,backend', 'problem-solving',
        '# DTO?

 DTO란 **Data Transfer Object**의 약자로, ||
        >>    **계층 간 데이터 전송을 위해 도메인 모델 대신 사용되는 객체**이다. 이때, 계층이란 Presentation(View, Controller), Business(Service), Persistence(DAO, Repository) 등을 의미한다.

 DTO는 순수하게 데이터를 저장하고, 데이터에 대한 getter, setter 만을 가져야한다고 한다. 위키피디아에 따르면 **DTO는 어떠한 비즈니스 로직을 가져서는 안되며**, 저장, 검색, 직렬화, 역직렬화 로직만을 가져야 한다고 한다.

 # **도메인 대신 DTO를 사용하면 좋은 이유**

 DTO 대신 도메인 모델을 계층간 전달에 사용하면, UI 계층에서 도메인 모델의 메소드를 호출하거나 상태를 변경시킬 수 있다. 또한 UI화면마다 사용하는 도메인 모델의 정보는 상이하다. 하지만 도메인 모델은 UI에 필요하지 않은 정보까지 가지고 있다. 이런 모든 도메인 모델 속성이 외부에 노출되면 보안 문제가 발생할 수 있다. **즉, 도메인 모델을 캡슐화 하여 보호할 수 있다.**

 또한 도메인 모델을 계층간 전송에 사용하면, 모델과 뷰가 강하게 결합될 수 있다. 뷰의 요구사항 변화로 도메인의 코드를 변경해야할 일이 생기는 것은 좋지 않다. **DTO를 사용하면 이 결합을 느슨하게 만들 수 있다.**

 1. **DTO Class:** A plain Java class that holds data attributes but no business logic. For instance, a `CustomerDetailsDTO` might contain fields like `name`, `email`, `mobileNum`, `accountNumber`, `accountType`, and `branchAddress`.

 ## **예제 1: API 응답 단순화**

 많은 애플리케이션에서 엔티티에 저장된 데이터는 클라이언트가 필요로 하는 것보다 더 자세할 수 있습니다. DTO를 사용하면 API 응답을 조정하여 필요한 데이터만 포함할 수 있습니다.

 ex) 도메인은 이름 , 가격, 색상, 재고 여부, 디스크립션 속성이 있지만 실제 클라이언트는 api로 이름과 가격만 받기를 원하는 경우

 [Leveraging the Data Transfer Object (DTO Pattern in Spring Boot: Enhancing Data Transfer Efficiency](https://medium.com/@ksaquib/leveraging-the-data-transfer-object-dto-pattern-in-spring-boot-enhancing-data-transfer-efficiency-5bd2dc488d0d)

 - 안녕하세요
     - hello
     - :3
     - hi
 - 고양이
 1. 냠냠
 2. 챱챱

 ```java
 test
 test
 good
 ```
 '),
       ('Git / GitHub 마스터 하기', 'Version Control Best Practices', '2023-05-18',
        'git,github,version control', 'client',
        '# DTO?

 DTO란 **Data Transfer Object**의 약자로, ||
        >>    **계층 간 데이터 전송을 위해 도메인 모델 대신 사용되는 객체**이다. 이때, 계층이란 Presentation(View, Controller), Business(Service), Persistence(DAO, Repository) 등을 의미한다.

 DTO는 순수하게 데이터를 저장하고, 데이터에 대한 getter, setter 만을 가져야한다고 한다. 위키피디아에 따르면 **DTO는 어떠한 비즈니스 로직을 가져서는 안되며**, 저장, 검색, 직렬화, 역직렬화 로직만을 가져야 한다고 한다.

 # **도메인 대신 DTO를 사용하면 좋은 이유**

 DTO 대신 도메인 모델을 계층간 전달에 사용하면, UI 계층에서 도메인 모델의 메소드를 호출하거나 상태를 변경시킬 수 있다. 또한 UI화면마다 사용하는 도메인 모델의 정보는 상이하다. 하지만 도메인 모델은 UI에 필요하지 않은 정보까지 가지고 있다. 이런 모든 도메인 모델 속성이 외부에 노출되면 보안 문제가 발생할 수 있다. **즉, 도메인 모델을 캡슐화 하여 보호할 수 있다.**

 또한 도메인 모델을 계층간 전송에 사용하면, 모델과 뷰가 강하게 결합될 수 있다. 뷰의 요구사항 변화로 도메인의 코드를 변경해야할 일이 생기는 것은 좋지 않다. **DTO를 사용하면 이 결합을 느슨하게 만들 수 있다.**

 1. **DTO Class:** A plain Java class that holds data attributes but no business logic. For instance, a `CustomerDetailsDTO` might contain fields like `name`, `email`, `mobileNum`, `accountNumber`, `accountType`, and `branchAddress`.

 ## **예제 1: API 응답 단순화**

 많은 애플리케이션에서 엔티티에 저장된 데이터는 클라이언트가 필요로 하는 것보다 더 자세할 수 있습니다. DTO를 사용하면 API 응답을 조정하여 필요한 데이터만 포함할 수 있습니다.

 ex) 도메인은 이름 , 가격, 색상, 재고 여부, 디스크립션 속성이 있지만 실제 클라이언트는 api로 이름과 가격만 받기를 원하는 경우

 [Leveraging the Data Transfer Object (DTO Pattern in Spring Boot: Enhancing Data Transfer Efficiency](https://medium.com/@ksaquib/leveraging-the-data-transfer-object-dto-pattern-in-spring-boot-enhancing-data-transfer-efficiency-5bd2dc488d0d)

 - 안녕하세요
     - hello
     - :3
     - hi
 - 고양이
 1. 냠냠
 2. 챱챱

 ```java
 test
 test
 good
 ```
 '),
       ('도커 알아보기', 'Containerization for Developers', '2023-06-25',
        'docker,containers,devops', 'problem-solving',
        '# DTO?

 DTO란 **Data Transfer Object**의 약자로, ||
        >>    **계층 간 데이터 전송을 위해 도메인 모델 대신 사용되는 객체**이다. 이때, 계층이란 Presentation(View, Controller), Business(Service), Persistence(DAO, Repository) 등을 의미한다.

 DTO는 순수하게 데이터를 저장하고, 데이터에 대한 getter, setter 만을 가져야한다고 한다. 위키피디아에 따르면 **DTO는 어떠한 비즈니스 로직을 가져서는 안되며**, 저장, 검색, 직렬화, 역직렬화 로직만을 가져야 한다고 한다.

 # **도메인 대신 DTO를 사용하면 좋은 이유**

 DTO 대신 도메인 모델을 계층간 전달에 사용하면, UI 계층에서 도메인 모델의 메소드를 호출하거나 상태를 변경시킬 수 있다. 또한 UI화면마다 사용하는 도메인 모델의 정보는 상이하다. 하지만 도메인 모델은 UI에 필요하지 않은 정보까지 가지고 있다. 이런 모든 도메인 모델 속성이 외부에 노출되면 보안 문제가 발생할 수 있다. **즉, 도메인 모델을 캡슐화 하여 보호할 수 있다.**

 또한 도메인 모델을 계층간 전송에 사용하면, 모델과 뷰가 강하게 결합될 수 있다. 뷰의 요구사항 변화로 도메인의 코드를 변경해야할 일이 생기는 것은 좋지 않다. **DTO를 사용하면 이 결합을 느슨하게 만들 수 있다.**

 1. **DTO Class:** A plain Java class that holds data attributes but no business logic. For instance, a `CustomerDetailsDTO` might contain fields like `name`, `email`, `mobileNum`, `accountNumber`, `accountType`, and `branchAddress`.

 ## **예제 1: API 응답 단순화**

 많은 애플리케이션에서 엔티티에 저장된 데이터는 클라이언트가 필요로 하는 것보다 더 자세할 수 있습니다. DTO를 사용하면 API 응답을 조정하여 필요한 데이터만 포함할 수 있습니다.

 ex) 도메인은 이름 , 가격, 색상, 재고 여부, 디스크립션 속성이 있지만 실제 클라이언트는 api로 이름과 가격만 받기를 원하는 경우

 [Leveraging the Data Transfer Object (DTO Pattern in Spring Boot: Enhancing Data Transfer Efficiency](https://medium.com/@ksaquib/leveraging-the-data-transfer-object-dto-pattern-in-spring-boot-enhancing-data-transfer-efficiency-5bd2dc488d0d)

 - 안녕하세요
     - hello
     - :3
     - hi
 - 고양이
 1. 냠냠
 2. 챱챱

 ```java
 test
 test
 good
 ```
 '),
       ('쿠버네티스로 배포를 해보자!', 'Orchestrating Containers', '2023-07-30',
        'kubernetes,containers,devops', 'problem-solving',
        '# DTO?

 DTO란 **Data Transfer Object**의 약자로, ||
        >>    **계층 간 데이터 전송을 위해 도메인 모델 대신 사용되는 객체**이다. 이때, 계층이란 Presentation(View, Controller), Business(Service), Persistence(DAO, Repository) 등을 의미한다.

 DTO는 순수하게 데이터를 저장하고, 데이터에 대한 getter, setter 만을 가져야한다고 한다. 위키피디아에 따르면 **DTO는 어떠한 비즈니스 로직을 가져서는 안되며**, 저장, 검색, 직렬화, 역직렬화 로직만을 가져야 한다고 한다.

 # **도메인 대신 DTO를 사용하면 좋은 이유**

 DTO 대신 도메인 모델을 계층간 전달에 사용하면, UI 계층에서 도메인 모델의 메소드를 호출하거나 상태를 변경시킬 수 있다. 또한 UI화면마다 사용하는 도메인 모델의 정보는 상이하다. 하지만 도메인 모델은 UI에 필요하지 않은 정보까지 가지고 있다. 이런 모든 도메인 모델 속성이 외부에 노출되면 보안 문제가 발생할 수 있다. **즉, 도메인 모델을 캡슐화 하여 보호할 수 있다.**

 또한 도메인 모델을 계층간 전송에 사용하면, 모델과 뷰가 강하게 결합될 수 있다. 뷰의 요구사항 변화로 도메인의 코드를 변경해야할 일이 생기는 것은 좋지 않다. **DTO를 사용하면 이 결합을 느슨하게 만들 수 있다.**

 1. **DTO Class:** A plain Java class that holds data attributes but no business logic. For instance, a `CustomerDetailsDTO` might contain fields like `name`, `email`, `mobileNum`, `accountNumber`, `accountType`, and `branchAddress`.

 ## **예제 1: API 응답 단순화**

 많은 애플리케이션에서 엔티티에 저장된 데이터는 클라이언트가 필요로 하는 것보다 더 자세할 수 있습니다. DTO를 사용하면 API 응답을 조정하여 필요한 데이터만 포함할 수 있습니다.

 ex) 도메인은 이름 , 가격, 색상, 재고 여부, 디스크립션 속성이 있지만 실제 클라이언트는 api로 이름과 가격만 받기를 원하는 경우

 [Leveraging the Data Transfer Object (DTO Pattern in Spring Boot: Enhancing Data Transfer Efficiency](https://medium.com/@ksaquib/leveraging-the-data-transfer-object-dto-pattern-in-spring-boot-enhancing-data-transfer-efficiency-5bd2dc488d0d)

 - 안녕하세요
     - hello
     - :3
     - hi
 - 고양이
 1. 냠냠
 2. 챱챱

 ```java
 test
 test
 good
 ```
 '),
       ('데이터 과학자를 위한 파이썬 공부하기', 'Python Basics', '2023-08-12',
        'python,data science,machine learning', 'server',
        '# DTO?

 DTO란 **Data Transfer Object**의 약자로, ||
        >>    **계층 간 데이터 전송을 위해 도메인 모델 대신 사용되는 객체**이다. 이때, 계층이란 Presentation(View, Controller), Business(Service), Persistence(DAO, Repository) 등을 의미한다.

 DTO는 순수하게 데이터를 저장하고, 데이터에 대한 getter, setter 만을 가져야한다고 한다. 위키피디아에 따르면 **DTO는 어떠한 비즈니스 로직을 가져서는 안되며**, 저장, 검색, 직렬화, 역직렬화 로직만을 가져야 한다고 한다.

 # **도메인 대신 DTO를 사용하면 좋은 이유**

 DTO 대신 도메인 모델을 계층간 전달에 사용하면, UI 계층에서 도메인 모델의 메소드를 호출하거나 상태를 변경시킬 수 있다. 또한 UI화면마다 사용하는 도메인 모델의 정보는 상이하다. 하지만 도메인 모델은 UI에 필요하지 않은 정보까지 가지고 있다. 이런 모든 도메인 모델 속성이 외부에 노출되면 보안 문제가 발생할 수 있다. **즉, 도메인 모델을 캡슐화 하여 보호할 수 있다.**

 또한 도메인 모델을 계층간 전송에 사용하면, 모델과 뷰가 강하게 결합될 수 있다. 뷰의 요구사항 변화로 도메인의 코드를 변경해야할 일이 생기는 것은 좋지 않다. **DTO를 사용하면 이 결합을 느슨하게 만들 수 있다.**

 1. **DTO Class:** A plain Java class that holds data attributes but no business logic. For instance, a `CustomerDetailsDTO` might contain fields like `name`, `email`, `mobileNum`, `accountNumber`, `accountType`, and `branchAddress`.

 ## **예제 1: API 응답 단순화**

 많은 애플리케이션에서 엔티티에 저장된 데이터는 클라이언트가 필요로 하는 것보다 더 자세할 수 있습니다. DTO를 사용하면 API 응답을 조정하여 필요한 데이터만 포함할 수 있습니다.

 ex) 도메인은 이름 , 가격, 색상, 재고 여부, 디스크립션 속성이 있지만 실제 클라이언트는 api로 이름과 가격만 받기를 원하는 경우

 [Leveraging the Data Transfer Object (DTO Pattern in Spring Boot: Enhancing Data Transfer Efficiency](https://medium.com/@ksaquib/leveraging-the-data-transfer-object-dto-pattern-in-spring-boot-enhancing-data-transfer-efficiency-5bd2dc488d0d)

 - 안녕하세요
     - hello
     - :3
     - hi
 - 고양이
 1. 냠냠
 2. 챱챱

 ```java
 test
 test
 good
 ```
 '),
       ('효율적인 SQL 쿼리를 찾아서', 'Optimizing Database Access', '2023-09-19',
        'sql,database,query', 'server',
        '# DTO?

 DTO란 **Data Transfer Object**의 약자로, ||
        >>    **계층 간 데이터 전송을 위해 도메인 모델 대신 사용되는 객체**이다. 이때, 계층이란 Presentation(View, Controller), Business(Service), Persistence(DAO, Repository) 등을 의미한다.

 DTO는 순수하게 데이터를 저장하고, 데이터에 대한 getter, setter 만을 가져야한다고 한다. 위키피디아에 따르면 **DTO는 어떠한 비즈니스 로직을 가져서는 안되며**, 저장, 검색, 직렬화, 역직렬화 로직만을 가져야 한다고 한다.

 # **도메인 대신 DTO를 사용하면 좋은 이유**

 DTO 대신 도메인 모델을 계층간 전달에 사용하면, UI 계층에서 도메인 모델의 메소드를 호출하거나 상태를 변경시킬 수 있다. 또한 UI화면마다 사용하는 도메인 모델의 정보는 상이하다. 하지만 도메인 모델은 UI에 필요하지 않은 정보까지 가지고 있다. 이런 모든 도메인 모델 속성이 외부에 노출되면 보안 문제가 발생할 수 있다. **즉, 도메인 모델을 캡슐화 하여 보호할 수 있다.**

 또한 도메인 모델을 계층간 전송에 사용하면, 모델과 뷰가 강하게 결합될 수 있다. 뷰의 요구사항 변화로 도메인의 코드를 변경해야할 일이 생기는 것은 좋지 않다. **DTO를 사용하면 이 결합을 느슨하게 만들 수 있다.**

 1. **DTO Class:** A plain Java class that holds data attributes but no business logic. For instance, a `CustomerDetailsDTO` might contain fields like `name`, `email`, `mobileNum`, `accountNumber`, `accountType`, and `branchAddress`.

 ## **예제 1: API 응답 단순화**

 많은 애플리케이션에서 엔티티에 저장된 데이터는 클라이언트가 필요로 하는 것보다 더 자세할 수 있습니다. DTO를 사용하면 API 응답을 조정하여 필요한 데이터만 포함할 수 있습니다.

 ex) 도메인은 이름 , 가격, 색상, 재고 여부, 디스크립션 속성이 있지만 실제 클라이언트는 api로 이름과 가격만 받기를 원하는 경우

 [Leveraging the Data Transfer Object (DTO Pattern in Spring Boot: Enhancing Data Transfer Efficiency](https://medium.com/@ksaquib/leveraging-the-data-transfer-object-dto-pattern-in-spring-boot-enhancing-data-transfer-efficiency-5bd2dc488d0d)

 - 안녕하세요
     - hello
     - :3
     - hi
 - 고양이
 1. 냠냠
 2. 챱챱

 ```java
 test
 test
 good
 ```
 ');