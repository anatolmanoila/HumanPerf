require 'spec_helper'

describe Program do
  before {@program = Program.new(task_title: "7 habbits of Successful Managers - S.Kavi", of_type: "ebook", user_progress: 10, user_rating:"I recommend this for all people", user_status:"Enthusiast")}
  subject {@program}

  it { should respond_to(:task_title) }
  it { should respond_to(:of_type) }

  it { should be_valid }

  describe "when task title is not present" do
    before { @program.task_title = " "}
    it  { should_not be_valid }
  end

  describe "when task_title is too long" do
    before { @program.task_title = "a" * 121}
    it {should_not be_valid}
  end
end
