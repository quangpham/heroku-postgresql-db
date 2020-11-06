class Db < ApplicationRecord

  def self.import_from_env
    ENV.each do |k,v|
      if k.index("HEROKU_POSTGRESQL") == 0 || k.index("DATABASE_URL") == 0
        db = Db.find_or_create_by(env_key: k)
        db.update(url: v)
      end
    end
  end

end
