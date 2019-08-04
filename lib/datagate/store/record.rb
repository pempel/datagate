class Store
  Record = Struct.new(
    :id,
    :project,
    :shot,
    :version,
    :status,
    :finish_date,
    :internal_bid,
    :created_date
  ) do
    def self.column_names
      members.map { |m| m.upcase.to_s }
    end

    def initialize(id, pro, sho, ver, sta, fin, int, cre)
      super(id.to_i, pro, sho, ver.to_i, sta, fin, int.to_f, cre)
    end

    def primary_key
      "#{project}-#{shot}-#{version}"
    end
  end
end