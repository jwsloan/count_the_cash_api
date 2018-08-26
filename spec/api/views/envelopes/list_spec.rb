require_relative '../../../spec_helper'

describe Api::Views::Envelopes::List do
  let(:exposures) { Hash[format: :html] }
  let(:template)  { Hanami::View::Template.new('apps/api/templates/envelopes/list.html.erb') }
  let(:view)      { Api::Views::Envelopes::List.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #format' do
    view.format.must_equal exposures.fetch(:format)
  end
end
