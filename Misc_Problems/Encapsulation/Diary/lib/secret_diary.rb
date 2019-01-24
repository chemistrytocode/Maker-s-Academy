require_relative 'lock'

class SecretDiary
  attr_reader :diary_lock

  def initialize(lock = Lock)
    @diary_lock = lock.new
  end

  def lock
    @diary_lock.lock
  end

  def unlock
    @diary_lock.unlock
  end

  def add_entry
    raise "Diary is locked: Cannot add entry" if @diary_lock.locked
  end

  def get_entries
    raise "Diary is locked: Cannot get entries" if @diary_lock.locked
  end

end
