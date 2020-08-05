User.destroy_all
List.destroy_all
Task.destroy_all


user_a = User.create(username: 'lol', password: 'lol')
user_b = User.create(username: 'test', password: 'test')

list_a = List.create(name: 'Grocery List', user_id: user_a.id)
list_b = List.create(name: 'Lawncare List', user_id: user_b.id)
list_c = List.create(name: 'Playtime List', user_id: user_a.id)
list_d = List.create(name: 'New Test List', user_id: user_b.id)

task_a = Task.create(text: 'apples', is_completed: false, list_id: list_a.id)
task_ab = Task.create(text: 'water', is_completed: false, list_id: list_a.id)
task_abb = Task.create(text: 'onion', is_completed: false, list_id: list_a.id)
task_ac = Task.create(text: 'we', is_completed: false, list_id: list_a.id)
task_ad = Task.create(text: 'are', is_completed: false, list_id: list_a.id)
task_ae = Task.create(text: 'limit', is_completed: false, list_id: list_a.id)
task_af = Task.create(text: 'testing', is_completed: false, list_id: list_a.id)
task_ag = Task.create(text: 'grapes', is_completed: false, list_id: list_a.id)
task_hb = Task.create(text: 'bread', is_completed: false, list_id: list_a.id)
task_c = Task.create(text: 'milk', is_completed: false, list_id: list_a.id)

task_d = Task.create(text: 'cut grass', is_completed: false, list_id: list_b.id)
task_e = Task.create(text: 'trim fence', is_completed: false, list_id: list_b.id)
task_f = Task.create(text: 'water flowers', is_completed: false, list_id: list_b.id)

task_g = Task.create(text: 'sapito', is_completed: false, list_id: list_c.id)
task_h = Task.create(text: 'unicorn', is_completed: false, list_id: list_c.id)
task_i = Task.create(text: 'tug tug', is_completed: false, list_id: list_c.id)