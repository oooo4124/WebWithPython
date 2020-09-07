package com.VO;

public class onlineAdVO {

	private String 구분;
	private String 기준조회수;
	private String 가격;
	private String 판매유닛명;
	private String 판매단위;
	private String 평일주말;
	private String 시간대;
	private String 공시단가;
	private String 예상노출량;
	private String 상품구분;
	private String CPM가격;
	private String 상품명;
	private String 형태;
	private String 쿼리수;
	private String 과금형태;
	private String 순위;
	private String 클릭비용;
	
	// 테이블당 사용 변수(컬럼명)
//	네이버PC브랜드검색 / 구분 , 기준조회수, 가격  
//	네이버모바일브랜드검색 / 구분 , 기준조회수, 가격
//	네이버모바일콘텐츠DA / 구분, 판매유닛명, 판매단위, 가격
//	네이버서브동영상 / 구분, 판매유닛명, 판매단위, 가격
//	네이버타임보드 / 평일주말, 시간대, 공시단가, 예상노출량 
//	네이버홈롤링보드 / 판매유닛명, 판매단위 , 상품구분, CPM가격
//	네이버홈통합스페셜DA / 판매유닛명, 시간대, 가격, 예상노출량
//	다음 PC브랜드검색 / 상품명, 형태, 쿼리수, 가격
//	다음모바일 브랜드검색 / 상품명, 쿼리수, 가격
//	유튜브 / 상품명, 과금형태, 구분, 가격 
//	CPC순위비용 / 구분, 순위, 상품명, 클릭비용
//	
//	**페이스북은 지출금액 / 노출수 * 1000 해서 CPM을 얻을 수 있음 
	
//	받아야할 값 
//	네이버PC브랜드검색 : 구분(상품구분) , 기준조회수(얼만큼 조회될건지) return 가격
//	네이버모바일브랜드검색  : 구분(상품구분) , 기준조회수(얼만큼 조회될건지) return 가격
//	네이버모바일콘텐츠DA : 구분(모바일인지 PC인지 그외인지) , 판매유닛명(상품구분) return 판매단위+가격
//	네이버서브동영상 : 구분(카테고리 !!이안에 동영상있음), 판매유닛명(상품구분) return 판매단위 + 가격
//	네이버타임보드 : 평일주말 (평일 주말 구분), 시간대(1회집행당 비용임) , return 공시단가 +예상노출량
//	네이버홈롤링보드 : 판매유닛명(카테고리) , 상품구분(상품구분) return 판매단위 + CPM가격
//	네이버홈통합스페셜DA : 시간대 return 가격 + 예상노출량
//	다음PC브랜드검색 : 상품명 +형태 (상품구분) + 쿼리수 return 가격
//	다음모바일브랜드검색 : 상품명 + 쿼리수 return 가격
//	유튜브 : 상품명+ 구분(상품구분) + return 과금형태 , 가격
//	CPC순위비용 : 전체 출력
	
}
