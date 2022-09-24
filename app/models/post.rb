class Post < ApplicationRecord
    mount_uploader :image, ImageUploader

    def self.search(keyword)
        where(["room_name like?",  "%#{keyword}%"])
    end

    has_many :reservations


    validate :start_end_check
    validate :startday

    def start_end_check
      if self.finish < self.start
       errors.add(:finish, "は開始日より前の日付は登録できません。") 
      end
    end

    def startday
      return if start.blank?
      errors.add(:start, "は今日以降のものを選択してください") if start < Date.today
    end


end
