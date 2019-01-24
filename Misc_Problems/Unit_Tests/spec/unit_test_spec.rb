require 'unit_test'

# Unit tests are split into three distinct sections

describe FileSystem do
  it 'can add items to storage' do
    # Arrange - The Setup, the preconditions for the code.
    file_system = FileSystem.new
    file = File.new

    # Act - The Action, the execution which we want to run.
    file_system.store(file)

    # Assert - The Test, the check to determine what we want to happen is happening.
    expect(file_system.display_files).to include(file)
  end
end
