module Dispatcher
  @blocks = []
  def self.register(&block)
    @blocks << block
  end

  def self.dispatch(action)
    @blocks.each do |block|
      block.call(action)
    end
  end
end
