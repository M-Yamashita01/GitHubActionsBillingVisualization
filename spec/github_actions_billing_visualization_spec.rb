RSpec.describe GithubActionsBillingVisualization do
  it 'has a version number' do
    expect(GithubActionsBillingVisualization::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(GithubActionsBillingVisualization.greet).to eq('Hello')
  end
end
