# Notice!! 
Recomend Rails older than 6.1.4.4 (Rails 7.0.0 won't work)

# How to downgrade Rails

gem uninstall rails

gem intstall rails -v 6.1.4.4

rails _6.1.4.4_ new myapp -T -d mysql --api


######################
refer from https://github.com/DakotaLMartinez/rails-devise-jwt-tutorial
######################

# 주목할점
0. database.yml 부분에서 본인 환경에 맞춰 수정하세요. (mysql)
1. db/migrate 부분에서 add 파일 없이 user의 추가정보를 등록했습니다. (name, subname, gender, birth)
2. registration controller 부분에서 새로운 정보에 대한 permit을 등록했습니다.(before_action 부분)
3. current_user controller 를 추가하여 헤더에 JWT가 포함되도록 했습니다.
4. routes 부분 확인하세요.
5. devise.rb 부분 확인하세요.

# Notice Point
0. Modify the database.yml according to your environment. (mysql)
1. In the db/migrate, user's additional information is newly registered without an add_migrate_file. (name, subname, gender, birth)
2. In the registration controller, the "permit" for new information is registered. ("before_action" part)
3. Added "current_user controller" to include JWT in header.
4. Check the routes.rb.
5. Check the devise.rb.
