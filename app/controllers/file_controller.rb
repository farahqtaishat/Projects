class FileController < ApplicationController
  def new
  end

  def write
    HardWorker.perform_async('/Users/farah/documents/data', params['text'])
    # HardWorker.perform_in(1 min,'/Users/farah/documents/data', params['text'])
  end
end
