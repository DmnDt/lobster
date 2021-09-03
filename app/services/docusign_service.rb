class DocusignService < DocusignRest::Client

  def initialize(doc_user:)
    @doc_user = doc_user
    @client = DocusignRest::Client.new
    # raise
  end


  def templates
    @client.get_templates
  end

  def template(id)
    @client.get_template(id)
  end

  def get_envelope
    @client.create_envelope_from_template(
      status: 'sent',
      email: {
        subject: "The test email subject envelope",
        body: "Envelope body content here"
      },
      template_id: '32fea0cf-8d0f-4556-8d80-f3668766d571',
      signers: [
        {
          embedded: true,
          name: @doc_user.full_name,
          email: @doc_user.email,
          role_name: 'Investor'
        },
        # {
        #   embedded: true,
        #   name: 'tim',
        #   email: 'someone+else@gmail.com',
        #   role_name: 'Attorney'
        # }
      ]
    )
  end

  def get_url
    @client.get_recipient_view(
      envelope_id: get_envelope["envelopeId"],
      name: @doc_user.full_name,
      email: @doc_user.email,
      return_url: 'https://www.getlobster.co/investor_finish'
    )
  end

  # def get_status
  #   response = @client.get_envelope_recipients(
  #   envelope_id: get_envelope["envelopeId"],
  #   include_tabs: true,
  #   include_extended: true
  # )
  # end
end
