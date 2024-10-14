import pymysql

'''
CREATE TABLE `RESPONDENTS` (
	`PK_A`	VARCHAR(50)	NOT NULL,
	`RESPONDENT`	VARCHAR(50)	NULL,
	`CORR_COUNT`	VARCHAR(50)	NULL
);

CREATE TABLE `ANSWERS` (
	`PK_B`	VARCHAR(50)	NOT NULL,
	`FK_A`	VARCHAR(50)	NOT NULL,
	`ANSWER`	VARCHAR(50)	NULL
);

CREATE TABLE `QUESTIONS` (
	`PK_Q`	VARCHAR(50)	NOT NULL,
	`QUESTION`	VARCHAR(1000)	NULL,
	`ANSWER`	VARCHAR(50)	NULL
);

CREATE TABLE `OPTIONS` (
	`PK_O`	VARCHAR(50)	NOT NULL,
	`FK_Q`	VARCHAR(50)	NOT NULL,
	`OPTION`	VARCHAR(1000)	NULL
);

# 금융 상품 관련 문제 리스트
# insert 시 사용
questions = [
    {
        "question": "정기 예금의 주요 특징은 무엇인가요?",
        "options": ["A. 높은 유동성", "B. 고정 금리", "C. 만기 기간 없음", "D. 높은 위험"],
        "answer": "B"
    },
    {
        "question": "다음 중 정부가 발행하는 증권 유형은 무엇인가요?",
        "options": ["A. 국채", "B. 회사채", "C. 뮤추얼 펀드", "D. 정기 예금"],
        "answer": "A"
    },
    {
        "question": "대출에서 APR은 무엇의 약자인가요?",
        "options": ["A. 연이율", "B. 평균 지급률", "C. 누적 지급 비율", "D. 연간 지급 비율"],
        "answer": "A"
    },
    {
        "question": "다음 중 가장 안전한 투자 옵션은 무엇인가요?",
        "options": ["A. 주식", "B. 채권", "C. 저축 계좌", "D. 부동산"],
        "answer": "C"
    },
    {
        "question": "복리의 주요 이점은 무엇인가요?",
        "options": ["A. 세금 절감", "B. 빠른 자산 축적", "C. 유동성 증가", "D. 고정 금리"],
        "answer": "B"
    }
]
'''
'''
출력결과
이름을 입력 하시오 : test10


**질문 1: 정기 예금의 주요 특징은 무엇인가요?**
A. 높은 유동성
B. 고정 금리
C. 만기 기간 없음
D. 높은 위험
당신의 답변 (A, B, C 또는 D):d
틀렸습니다. 정답은 B입니다.


**질문 2: 다음 중 정부가 발행하는 증권 유형은 무엇인가요?**
A. 국채
B. 회사채
C. 뮤추얼 펀드
D. 정기 예금
당신의 답변 (A, B, C 또는 D):a
정답입니다!


**질문 3: 대출에서 APR은 무엇의 약자인가요?**
A. 연이율
B. 평균 지급률
C. 누적 지급 비율
D. 연간 지급 비율
당신의 답변 (A, B, C 또는 D):c
틀렸습니다. 정답은 A입니다.


**질문 4: 다음 중 가장 안전한 투자 옵션은 무엇인가요?**
A. 주식
B. 채권
C. 저축 계좌
D. 부동산
당신의 답변 (A, B, C 또는 D):a
틀렸습니다. 정답은 C입니다.


**질문 5: 복리의 주요 이점은 무엇인가요?**
A. 세금 절감
B. 빠른 자산 축적
C. 유동성 증가
D. 고정 금리
당신의 답변 (A, B, C 또는 D):b
정답입니다!


**퀴즈 완료! 당신의 총 점수는: 2/5**
**********참여자점수**********
이름:   test    점수:   2       응답:   B B B B B 
이름:   test1   점수:   1       응답:   C C C C C 
이름:   test2   점수:   2       응답:   A A A A A 
이름:   test5   점수:   2       응답:   A A A A A 
이름:   test6   점수:   0       응답:   D D D D D 
이름:   test7   점수:   5       응답:   B A A C B 
이름:   test8   점수:   2       응답:   B A D D D 
이름:   test10  점수:   2       응답:   D A C A B 

'''
def insert_database_questions(connect, questions):
    cursor = connect.cursor()
    sql = "INSERT INTO QUESTIONS (PK_Q, QUESTION, ANSWER) VALUES (%s, %s, %s)"
    for num, quest in enumerate(questions, start=1):
        #cursor.execute(sql, ('Q_'+str(num), quest['question'], quest['answer']))
        cursor.execute(sql, (f'Q_{num:02}', quest['question'], quest['answer']))

    connect.commit()
    return 

def insert_database_options(connect, questions):
    cursor = connect.cursor()
    sql = "INSERT INTO OPTIONS (PK_O, FK_Q, `OPTION`) VALUES (%s, %s, %s)"
    for num_o, quest in enumerate(questions, start=1):
        for num_q, opt in enumerate(quest['options'], start=1):
            temp_num = ((num_o-1)*4+num_q)
            # print(sql, (f'O_{temp_num:02}', f'Q_{num_o:02}', opt))
            cursor.execute(sql, (f'O_{temp_num:02}', f'Q_{num_o:02}', opt)) 
    # q,1,2,3,4,1
    # o,1,1,1,1,2
    # d = 4 = (o-1)*4
    connect.commit()
    return 

# commit 까지 하려면 connect 필요 
def insert_database_respondents(connect, user_name, corr_count, last_num):
    cursor = connect.cursor()
    sql = "INSERT INTO RESPONDENTS (PK_A, RESPONDENT, CORR_COUNT) VALUES (%s, %s, %s)"
    cursor.execute(sql, (f'A_{last_num:02}', user_name, corr_count))
    connect.commit()
    return 

def insert_database_answers(connect, user_answer_list, last_num):
    cursor = connect.cursor()
    sql = "INSERT INTO ANSWERS (PK_B, FK_A, ANSWER) VALUES (%s, %s, %s)"
    for num, quest in enumerate(user_answer_list, start=1):
        temp_num = (last_num-1)*5 + num # ((num_o-1)*4+num_q)
        cursor.execute(sql, (f'B_{temp_num:02}', f'A_{last_num:02}', quest))

    connect.commit()
    return 

def read_database(cursor, table_name):
    # Read
    sql = f"SELECT * FROM {table_name}"  # 테이블 이름을 직접 삽입
    cursor.execute(sql)
    return cursor.fetchall()

def input_user_answer(questions, options):
    print()
    print()

    return_input = []
    correct_num = 0
    for num, q in enumerate(questions, start=1): 
        print("**질문 " + str(num) + ": " + q["QUESTION"] + "**")
        for o in options: 
            if q['PK_Q']==o['FK_Q']:
                print(o['OPTION'])
        respond = input("당신의 답변 (A, B, C 또는 D):").upper()  
        return_input.append(respond)
        
        if respond == q["ANSWER"] :
            print("정답입니다!")
            correct_num+=1
        else:
            print("틀렸습니다. 정답은 "+q["ANSWER"]+"입니다.")
        print()
        print()

    print("**퀴즈 완료! 당신의 총 점수는: "+str(correct_num)+"/"+str(len(questions))+"**")
    return correct_num, return_input

def main():
    # 데이터베이스 연결 설정
    conn = pymysql.connect(
        host='python_mysql_mysql',  # 컨테이너 이름 또는 IP
        user='cocolabhub',
        password='cocolabhub',
        db='python_mysql',  # 데이터베이스 이름
        charset='utf8mb4', 
        cursorclass=pymysql.cursors.DictCursor  # DictCursor로 설정    
    )

    try:
        with conn.cursor() as cursor:
            # insert 수행
            # insert_database_questions(conn, questions)
            # insert_database_options(conn, questions)
            # 이미 수행 함

            # QUESTIONS
            # Read
            user_name = input('이름을 입력 하시오 : ')

            data_quest = read_database(cursor, "QUESTIONS")
            data_opt = read_database(cursor, "OPTIONS")
            user_corr_num, user_input = input_user_answer(data_quest, data_opt)
            
            # 결과 저장 
            # 결과 저장전 가장 마지막 PK 확인
            data_user = read_database(cursor, "RESPONDENTS")
            insert_database_respondents(conn, user_name, user_corr_num, len(data_user)+1)
            insert_database_answers(conn, user_input, len(data_user)+1)

            data_total = read_database(cursor, "RESPONDENTS")
            data_ans = read_database(cursor, "ANSWERS")

            print('**********참여자점수**********')
            for num, q in enumerate(data_total, start=1): 
                print("이름:\t"+q['RESPONDENT']+"\t점수:\t"+ q['CORR_COUNT']+"\t응답:\t", end='')
                for num, o in enumerate(data_ans, start=1): 
                    if q['PK_A']==o['FK_A']:
                        print(o['ANSWER'],end=' ')
                print()
            print()

            # # Update
            # sql = "UPDATE TableName SET column1=%s WHERE pk_id=%s"
            # cursor.execute(sql, ('newvalue1', 1))
            # conn.commit()

            # # Delete
            # sql = "DELETE FROM TableName WHERE pk_id=%s"
            # cursor.execute(sql, (1,))
            # conn.commit()

    finally:
        conn.close()


if __name__ == "__main__":
    main()