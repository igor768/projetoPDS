function[new_sig] = RemoveSilence(y, Fs);
%Retorna o sinal sem cilencio, considerando o silencio como uma palitude menor que 0.03
%Os sinais são cortados em 4000 pontos (0.4 segundos) para melhor análise dos dados
%Fs = 8192;
	
	frame_duration = 0.1;
	frame_len = frame_duration * Fs;
	N = length(y);
	num_frames = N/frame_len;
	
	new_sig = zeros(N, 1);
	count = 0;
	for k = 1: num_frames
		frame = y((k-1) *frame_len + 1 : frame_len*1);
		max_val = max(frame);
		if(max_val > 0.03)
			count = count + 1;
			new_sig((count-1)*frame_len + 1 : frame_len*count) = frame;
		end
	end
	new_sig(4000:end) = [];