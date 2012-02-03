begin
        iFile=File.open(opName, "r")
        buffer=ifile.read(512)
        oFile=File.open(opName, "w")
        opFile.write(buffer)
        rescue SystemCallError
                print "File operation failed", +$!
                raise
        end
        rescue StandardError => syserrobj
               print "File operation failed", +syserrobj
                raise
        end
        ensure
                ifile.close unless ifile.nil?
        end
end

