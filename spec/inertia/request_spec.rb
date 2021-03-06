RSpec.describe 'Inertia::Request', type: :request do
  describe 'it tests whether a call is an inertia call' do
    subject { response.status }
    before { get inertia_request_test_path, headers: headers }

    context 'it is an inertia call' do
      let(:headers) { {'X-Inertia' => true} }

      it { is_expected.to eq 202 }
    end

    context 'it is not an inertia call' do
      let(:headers) { Hash.new }

      it { is_expected.to eq 200 }
    end
  end 
end
