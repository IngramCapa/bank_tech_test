require 'transaction'

describe Transaction do
  let (:subject) { Transaction.new ( { '10/01/2012' => 1000 } ) }

  it "should have a date and an amount" do
    expect(subject.t_details).to eq( { "10/01/2012" => 1000 } )
  end
end