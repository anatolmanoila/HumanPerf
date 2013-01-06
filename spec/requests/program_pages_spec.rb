require 'spec_helper'

describe "Program pages" do
  subject { page }

  describe "signup page" do
    before {visit program_path}

    # it { should have_selector('h1',    text: 'Program') }
    # it { should have_selector('title', text: 'Program') }
  end
end
