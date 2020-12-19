Rails.application.config.session_store :redis_session_store, {
    key: 'course_session_key',
    redis: {
      expire_after: 120.minutes,  # cookie expiration
      ttl: 120.minutes,           # Redis expiration, defaults to 'expire_after'
      key_prefix: 'myapp:session:',
      url: 'redis://localhost:6379/0',
    }
  }
