class Dictionary

  def initialize
    @entries = {}
    @keywords = []
  end

  def entries
    @entries
  end

  def keywords
    @keywords.sort
  end

  def entries=()
    @entries
  end

  def keywords=()
    @keywords
  end

  def add(entry)
    if entry == entry.to_s
      entry = {entry => nil}
    end
    entry.each do |k,v|
      @keywords << k
      @entries[k] = v
    end

  end


  def include?(keyword_search)
    if @keywords.empty?
      return false
    end
    @keywords.each do |keyword|
      if keyword == keyword_search
        return true
      else
        return false
      end
    end
  end

  def find(search)
    @entries.select{|k,v| k.start_with? search}
  end


end
