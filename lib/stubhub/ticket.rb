module Stubhub
  class Ticket < Document

    def self.find_by_ticket_id(ticket_id, options = {})
      params = {"stubhubDocumentType" => "*",
                 "id" => "#{ticket_id}"}
      Client.make_request(Ticket, params, options = {})
    end


  end
end
