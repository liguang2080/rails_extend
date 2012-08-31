# -*- encoding : utf-8 -*-
class Time
  #used for Timezone insensitive comparisons
  def === t
    self.year == t.year &&
      self.month == t.month &&
      self.day == t.day &&
      self.hour == t.hour &&
      self.min == t.min &&
      self.sec == t.sec
  end


  def last_week
    self - 7.days
  end

  def next_week
    self + 7.days
  end
  
  def to_china
    self.to_s(:china)
  end

  def to_chinas
    self.to_s(:chinas)
  end
end


module ActiveSupport
  class TimeWithZone
    def time_human
      dt = self.to_datetime
      return "刚刚" if Time.zone.now < dt + 1.minute
      return "#{ (Time.zone.now - dt).to_i / 60 } 分钟前" if Time.zone.now < dt + 1.hour
      return "今天 #{dt.hour}:#{dt.minute}" if (Time.zone.now >= dt + 1.hour) && (Time.zone.now < dt.end_of_day)
      return dt.to_s(:date_time24su) if (Time.zone.now >= dt.end_of_day) && (Time.zone.now < dt.end_of_year)
      return dt.to_s(:date_time24u) if (Time.zone.now >= dt.end_of_year)
    end
  end
end