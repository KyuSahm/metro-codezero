from flask import Flask, request
from flaskext.mysql import MySQL

app = Flask(__name__)

'''
app.config['MYSQL_DATABASE_HOST'] = 'codezero.cu4oiapmpfoz.ap-northeast-2.rds.amazonaws.com'
app.config['MYSQL_DATABASE_USER'] = 'admin'
app.config['MYSQL_DATABASE_PASSWORD'] = 'ehalthf93'
app.config['MYSQL_DATABASE_DB'] = 'metro'
'''
app.config['MYSQL_DATABASE_HOST'] = 'localhost'
app.config['MYSQL_DATABASE_USER'] = 'aitech'
app.config['MYSQL_DATABASE_PASSWORD'] = '1234'
app.config['MYSQL_DATABASE_DB'] = 'codezero'


mysql = MySQL()
mysql.init_app(app)

@app.route('/train')
def get_indoor_picture():
    args = request.args
    line = args.get('line')
    subline = args.get('subline')
    train_id = args.get('train_id')
    print(args, line, subline, train_id)

    stmt_query = \
        """select *  
             from train
            where line = %s
              and subline = %s
              and id = %s"""
    stmt_condition = (line, subline, train_id)
    cursor = mysql.get_db().cursor()
    cursor.execute(stmt_query, stmt_condition)
    #cursor.execute("select * from indoor_picture where id=%s", id)

    column_names = [x[0] for x in cursor.description]
    result = cursor.fetchone()

    print("cursor.description: {}".format(cursor.description))
    print("result: {}".format(result))
    response = dict(zip(column_names, result))

    return response

if __name__ == '__main__':
    app.run(debug=True)
    #app.run(debug=True, host="0.0.0.0", port=80)