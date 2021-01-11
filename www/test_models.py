import orm
import random
import aiounittest

from models import User, Blog, Comment


class TestUser(aiounittest.AsyncTestCase):
    async def init_pool(self):
        self.pool = await orm.create_pool(
            user='miao',
            password='123456',
            db='awesome',
            host='192.168.50.20'
        )
    # 测试数据是否保存成功
    # async def test_save(self):
    #     print('执行了')
    #     await self.init_pool()
    #
    #     u = User(name='Test', email=str(random.random() * 10000) + 'test@qq.com',
    #              password='123456', images='ddf')
    #     print(u)
    #     await u.save()
    #     await orm.close_pool()
    #     print('结束了')

    # 测试数据是否更新成功
    async def test_update(self):
        await self.init_pool()

        u = User(id=1,name='testUpdate', email=str(random.random() * 10000) + 'test123@qq.com',
                 password='123456', images='dvdfbss',admin=0,created_at=123850.45)
        print(u)
        await u.update()
        await orm.close_pool()