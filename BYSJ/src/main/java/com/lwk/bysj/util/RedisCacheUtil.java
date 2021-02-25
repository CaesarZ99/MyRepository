package com.lwk.bysj.util;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

import com.lwk.bysj.config.RedisApplication;
import org.apache.ibatis.cache.Cache;
import org.springframework.context.annotation.DependsOn;
import org.springframework.dao.DataAccessException;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;

public class RedisCacheUtil implements Cache {

	private String namespace; //存储namespace



    private long timeout=15;
    //涉及并发操作缓存需要加锁
    private ReadWriteLock readWriteLock=new ReentrantReadWriteLock(); //读写锁

	private RedisTemplate<Object, Object> getRedisTemplate(){
		return (RedisTemplate<Object, Object>) RedisApplication.getBean("redisTemplate");
	}
	public RedisCacheUtil(String namespace) {
		super();
		this.namespace = namespace;
	}

	@Override
	public String getId() {
		// TODO Auto-generated method stub
		return namespace;
	}

	@Override
	public void putObject(Object key, Object value) {
		// TODO Auto-generated method stub
		 System.out.println("将查询结果存储到cache.key:"+key+",value"+value);
	     ValueOperations operations = getRedisTemplate().opsForValue();
	     operations.set(key,value,timeout, TimeUnit.DAYS);
	}

	@Override
	public Object getObject(Object key) {
		// TODO Auto-generated method stub
		 System.out.println("从缓存中读取结果.key:"+key);
	     ValueOperations operations = getRedisTemplate().opsForValue();
	     return operations.get(key);
	}

	@Override
	public Object removeObject(Object key) {
		// TODO Auto-generated method stub
		 System.out.println("从缓存中清除.key:"+key);
        ValueOperations operations = getRedisTemplate().opsForValue();
        Object value = operations.get(key);
		getRedisTemplate().delete(key);
        return value;
	}

	@Override
	public void clear() {
		// TODO Auto-generated method stub
		 System.out.println("从缓存区删除所有数据");
		getRedisTemplate().execute(new RedisCallback() {
            @Override
            public Object doInRedis(RedisConnection connection) throws DataAccessException {
                connection.flushAll();
                return null;
            }
        });
	}

	@Override
	public int getSize() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ReadWriteLock getReadWriteLock() {
	        //将读写锁返回
	    return readWriteLock;
	}

	public void setTimeout(long timeout) {
	    this.timeout = timeout;
	}

}


