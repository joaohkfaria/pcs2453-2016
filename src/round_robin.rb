
class RoundRobin
  attr_accessor :jobs, :current_size, :max_size

  def initialize(max_size)
    @max_size = max_size
    @current_size = 0
    @jobs = []
  end

  def add(job)
    if @current_size < @max_size
      @jobs << job
      @current_size += 1

      # Retorna true se foi possível adicionar ao Round Robin
      true
    else
      # Retorna falso se não é possível adicionar ao Round Robin
      false
    end
  end

  def next
    # Caso não haja jobs no Round Robin devolvemos nulo
    if @jobs.empty?
      return nil
    end

    # Devolvendo job do Round Robin
    @current_size -= 1
    @jobs.shift
  end

  def remove(job)
    @jobs.delete(job)
    @current_size -= 1
  end

  def is_empty?
    @jobs.empty?
  end

end