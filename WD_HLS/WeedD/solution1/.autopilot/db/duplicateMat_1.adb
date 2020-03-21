<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
  <syndb class_id="0" tracking_level="0" version="0">
    <userIPLatency>-1</userIPLatency>
    <userIPName/>
    <cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
      <name>duplicateMat_1</name>
      <ret_bitwidth>0</ret_bitwidth>
      <ports class_id="2" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="3" tracking_level="1" version="0" object_id="_1">
          <Value class_id="4" tracking_level="0" version="0">
            <Obj class_id="5" tracking_level="0" version="0">
              <type>1</type>
              <id>1</id>
              <name>p_src_data_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo class_id="6" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>_src.data.V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>0</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs class_id="7" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_2">
          <Value>
            <Obj>
              <type>1</type>
              <id>2</id>
              <name>p_dst1_data_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>_dst1.data.V</originalName>
              <rtlName/>
              <coreName>RAM</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>1</if_type>
          <array_size>57600</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
        <item class_id_reference="3" object_id="_3">
          <Value>
            <Obj>
              <type>1</type>
              <id>3</id>
              <name>p_dst2_data_V</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName>_dst2.data.V</originalName>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <direction>1</direction>
          <if_type>3</if_type>
          <array_size>0</array_size>
          <bit_vecs>
            <count>0</count>
            <item_version>0</item_version>
          </bit_vecs>
        </item>
      </ports>
      <nodes class_id="8" tracking_level="0" version="0">
        <count>10</count>
        <item_version>0</item_version>
        <item class_id="9" tracking_level="1" version="0" object_id="_4">
          <Value>
            <Obj>
              <type>0</type>
              <id>6</id>
              <name>p_dst2_cols_read_c</name>
              <fileName>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>79</lineNumber>
              <contextFuncName>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item class_id="10" tracking_level="0" version="0">
                  <first>D:\GitHub\Weed_Detection\WD_HLS</first>
                  <second class_id="11" tracking_level="0" version="0">
                    <count>1</count>
                    <item_version>0</item_version>
                    <item class_id="12" tracking_level="0" version="0">
                      <first class_id="13" tracking_level="0" version="0">
                        <first>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</first>
                        <second>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</second>
                      </first>
                      <second>79</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>10</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>30</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>1</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_5">
          <Value>
            <Obj>
              <type>0</type>
              <id>7</id>
              <name>p_src_cols_read_c</name>
              <fileName>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>79</lineNumber>
              <contextFuncName>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>D:\GitHub\Weed_Detection\WD_HLS</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</first>
                        <second>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</second>
                      </first>
                      <second>79</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>p_src_cols_read_c_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>10</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>31</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>2</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_6">
          <Value>
            <Obj>
              <type>0</type>
              <id>8</id>
              <name>p_src_rows_read_c</name>
              <fileName>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>79</lineNumber>
              <contextFuncName>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>D:\GitHub\Weed_Detection\WD_HLS</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</first>
                        <second>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</second>
                      </first>
                      <second>79</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>p_src_rows_read_c_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>9</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>32</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>3</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_7">
          <Value>
            <Obj>
              <type>0</type>
              <id>10</id>
              <name>src_V_V</name>
              <fileName>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>85</lineNumber>
              <contextFuncName>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>D:\GitHub\Weed_Detection\WD_HLS</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</first>
                        <second>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</second>
                      </first>
                      <second>85</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName>src.V.V</originalName>
              <rtlName>src_V_V_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>33</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>4</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_8">
          <Value>
            <Obj>
              <type>0</type>
              <id>13</id>
              <name>dst_V_V</name>
              <fileName>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>86</lineNumber>
              <contextFuncName>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>D:\GitHub\Weed_Detection\WD_HLS</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</first>
                        <second>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</second>
                      </first>
                      <second>86</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName>dst.V.V</originalName>
              <rtlName>dst_V_V_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>34</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>5</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_9">
          <Value>
            <Obj>
              <type>0</type>
              <id>16</id>
              <name>dst1_V_V</name>
              <fileName>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>87</lineNumber>
              <contextFuncName>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>D:\GitHub\Weed_Detection\WD_HLS</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</first>
                        <second>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</second>
                      </first>
                      <second>87</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName>dst1.V.V</originalName>
              <rtlName>dst1_V_V_U</rtlName>
              <coreName>FIFO</coreName>
            </Obj>
            <bitwidth>8</bitwidth>
          </Value>
          <oprand_edges>
            <count>1</count>
            <item_version>0</item_version>
            <item>35</item>
          </oprand_edges>
          <opcode>alloca</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>6</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_10">
          <Value>
            <Obj>
              <type>0</type>
              <id>24</id>
              <name>_ln79</name>
              <fileName>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>79</lineNumber>
              <contextFuncName>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>D:\GitHub\Weed_Detection\WD_HLS</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</first>
                        <second>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</second>
                      </first>
                      <second>79</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>duplicateMat_Loop_Re_2_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>6</count>
            <item_version>0</item_version>
            <item>37</item>
            <item>38</item>
            <item>39</item>
            <item>40</item>
            <item>41</item>
            <item>42</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>7</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_11">
          <Value>
            <Obj>
              <type>0</type>
              <id>25</id>
              <name>_ln104</name>
              <fileName>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>104</lineNumber>
              <contextFuncName>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>D:\GitHub\Weed_Detection\WD_HLS</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</first>
                        <second>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</second>
                      </first>
                      <second>104</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName>xFDuplicate637_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>8</count>
            <item_version>0</item_version>
            <item>44</item>
            <item>45</item>
            <item>46</item>
            <item>47</item>
            <item>48</item>
            <item>49</item>
            <item>264</item>
            <item>265</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>8</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_12">
          <Value>
            <Obj>
              <type>0</type>
              <id>26</id>
              <name>_ln0</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName>duplicateMat_Loop_2_2_U0</rtlName>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>7</count>
            <item_version>0</item_version>
            <item>51</item>
            <item>52</item>
            <item>53</item>
            <item>54</item>
            <item>55</item>
            <item>263</item>
            <item>266</item>
          </oprand_edges>
          <opcode>call</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>9</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
        <item class_id_reference="9" object_id="_13">
          <Value>
            <Obj>
              <type>0</type>
              <id>27</id>
              <name>_ln119</name>
              <fileName>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</fileName>
              <fileDirectory>..</fileDirectory>
              <lineNumber>119</lineNumber>
              <contextFuncName>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</contextFuncName>
              <inlineStackInfo>
                <count>1</count>
                <item_version>0</item_version>
                <item>
                  <first>D:\GitHub\Weed_Detection\WD_HLS</first>
                  <second>
                    <count>1</count>
                    <item_version>0</item_version>
                    <item>
                      <first>
                        <first>D:/Xilinx/xfopencv-master/include\imgproc/xf_duplicateimage.hpp</first>
                        <second>duplicateMat&amp;lt;0, 180, 320, 1&amp;gt;</second>
                      </first>
                      <second>119</second>
                    </item>
                  </second>
                </item>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <oprand_edges>
            <count>0</count>
            <item_version>0</item_version>
          </oprand_edges>
          <opcode>ret</opcode>
          <m_Display>0</m_Display>
          <m_isOnCriticalPath>0</m_isOnCriticalPath>
          <m_isLCDNode>0</m_isLCDNode>
          <m_isStartOfPath>0</m_isStartOfPath>
          <m_delay>0.00</m_delay>
          <m_topoIndex>10</m_topoIndex>
          <m_clusterGroupNumber>-1</m_clusterGroupNumber>
        </item>
      </nodes>
      <consts class_id="15" tracking_level="0" version="0">
        <count>4</count>
        <item_version>0</item_version>
        <item class_id="16" tracking_level="1" version="0" object_id="_14">
          <Value>
            <Obj>
              <type>2</type>
              <id>29</id>
              <name>empty</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>64</bitwidth>
          </Value>
          <const_type>0</const_type>
          <content>1</content>
        </item>
        <item class_id_reference="16" object_id="_15">
          <Value>
            <Obj>
              <type>2</type>
              <id>36</id>
              <name>duplicateMat_Loop_Re_2</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:duplicateMat_Loop_Re.2&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_16">
          <Value>
            <Obj>
              <type>2</type>
              <id>43</id>
              <name>xFDuplicate637</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:xFDuplicate637&gt;</content>
        </item>
        <item class_id_reference="16" object_id="_17">
          <Value>
            <Obj>
              <type>2</type>
              <id>50</id>
              <name>duplicateMat_Loop_2_2</name>
              <fileName/>
              <fileDirectory/>
              <lineNumber>0</lineNumber>
              <contextFuncName/>
              <inlineStackInfo>
                <count>0</count>
                <item_version>0</item_version>
              </inlineStackInfo>
              <originalName/>
              <rtlName/>
              <coreName/>
            </Obj>
            <bitwidth>0</bitwidth>
          </Value>
          <const_type>6</const_type>
          <content>&lt;constant:duplicateMat_Loop_2_.2&gt;</content>
        </item>
      </consts>
      <blocks class_id="17" tracking_level="0" version="0">
        <count>1</count>
        <item_version>0</item_version>
        <item class_id="18" tracking_level="1" version="0" object_id="_18">
          <Obj>
            <type>3</type>
            <id>28</id>
            <name>duplicateMat.1</name>
            <fileName/>
            <fileDirectory/>
            <lineNumber>0</lineNumber>
            <contextFuncName/>
            <inlineStackInfo>
              <count>0</count>
              <item_version>0</item_version>
            </inlineStackInfo>
            <originalName/>
            <rtlName/>
            <coreName/>
          </Obj>
          <node_objs>
            <count>10</count>
            <item_version>0</item_version>
            <item>6</item>
            <item>7</item>
            <item>8</item>
            <item>10</item>
            <item>13</item>
            <item>16</item>
            <item>24</item>
            <item>25</item>
            <item>26</item>
            <item>27</item>
          </node_objs>
        </item>
      </blocks>
      <edges class_id="19" tracking_level="0" version="0">
        <count>27</count>
        <item_version>0</item_version>
        <item class_id="20" tracking_level="1" version="0" object_id="_19">
          <id>30</id>
          <edge_type>1</edge_type>
          <source_obj>29</source_obj>
          <sink_obj>6</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_20">
          <id>31</id>
          <edge_type>1</edge_type>
          <source_obj>29</source_obj>
          <sink_obj>7</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_21">
          <id>32</id>
          <edge_type>1</edge_type>
          <source_obj>29</source_obj>
          <sink_obj>8</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_22">
          <id>33</id>
          <edge_type>1</edge_type>
          <source_obj>29</source_obj>
          <sink_obj>10</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_23">
          <id>34</id>
          <edge_type>1</edge_type>
          <source_obj>29</source_obj>
          <sink_obj>13</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_24">
          <id>35</id>
          <edge_type>1</edge_type>
          <source_obj>29</source_obj>
          <sink_obj>16</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_25">
          <id>37</id>
          <edge_type>1</edge_type>
          <source_obj>36</source_obj>
          <sink_obj>24</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_26">
          <id>38</id>
          <edge_type>1</edge_type>
          <source_obj>1</source_obj>
          <sink_obj>24</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_27">
          <id>39</id>
          <edge_type>1</edge_type>
          <source_obj>10</source_obj>
          <sink_obj>24</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_28">
          <id>40</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>24</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_29">
          <id>41</id>
          <edge_type>1</edge_type>
          <source_obj>7</source_obj>
          <sink_obj>24</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_30">
          <id>42</id>
          <edge_type>1</edge_type>
          <source_obj>6</source_obj>
          <sink_obj>24</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_31">
          <id>44</id>
          <edge_type>1</edge_type>
          <source_obj>43</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_32">
          <id>45</id>
          <edge_type>1</edge_type>
          <source_obj>10</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_33">
          <id>46</id>
          <edge_type>1</edge_type>
          <source_obj>13</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_34">
          <id>47</id>
          <edge_type>1</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_35">
          <id>48</id>
          <edge_type>1</edge_type>
          <source_obj>8</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_36">
          <id>49</id>
          <edge_type>1</edge_type>
          <source_obj>7</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_37">
          <id>51</id>
          <edge_type>1</edge_type>
          <source_obj>50</source_obj>
          <sink_obj>26</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_38">
          <id>52</id>
          <edge_type>1</edge_type>
          <source_obj>13</source_obj>
          <sink_obj>26</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_39">
          <id>53</id>
          <edge_type>1</edge_type>
          <source_obj>2</source_obj>
          <sink_obj>26</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_40">
          <id>54</id>
          <edge_type>1</edge_type>
          <source_obj>16</source_obj>
          <sink_obj>26</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_41">
          <id>55</id>
          <edge_type>1</edge_type>
          <source_obj>3</source_obj>
          <sink_obj>26</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_42">
          <id>263</id>
          <edge_type>4</edge_type>
          <source_obj>25</source_obj>
          <sink_obj>26</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_43">
          <id>264</id>
          <edge_type>4</edge_type>
          <source_obj>24</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_44">
          <id>265</id>
          <edge_type>4</edge_type>
          <source_obj>24</source_obj>
          <sink_obj>25</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
        <item class_id_reference="20" object_id="_45">
          <id>266</id>
          <edge_type>4</edge_type>
          <source_obj>25</source_obj>
          <sink_obj>26</sink_obj>
          <is_back_edge>0</is_back_edge>
        </item>
      </edges>
    </cdfg>
    <cdfg_regions class_id="21" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="22" tracking_level="1" version="0" object_id="_46">
        <mId>1</mId>
        <mTag>duplicateMat.1</mTag>
        <mType>0</mType>
        <sub_regions>
          <count>0</count>
          <item_version>0</item_version>
        </sub_regions>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>28</item>
        </basic_blocks>
        <mII>-1</mII>
        <mDepth>-1</mDepth>
        <mMinTripCount>-1</mMinTripCount>
        <mMaxTripCount>-1</mMaxTripCount>
        <mMinLatency>58143</mMinLatency>
        <mMaxLatency>58143</mMaxLatency>
        <mIsDfPipe>1</mIsDfPipe>
        <mDfPipe class_id="23" tracking_level="1" version="0" object_id="_47">
          <port_list class_id="24" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </port_list>
          <process_list class_id="25" tracking_level="0" version="0">
            <count>3</count>
            <item_version>0</item_version>
            <item class_id="26" tracking_level="1" version="0" object_id="_48">
              <type>0</type>
              <name>duplicateMat_Loop_Re_2_U0</name>
              <ssdmobj_id>24</ssdmobj_id>
              <pins class_id="27" tracking_level="0" version="0">
                <count>5</count>
                <item_version>0</item_version>
                <item class_id="28" tracking_level="1" version="0" object_id="_49">
                  <port class_id="29" tracking_level="1" version="0" object_id="_50">
                    <name>p_src_data_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id="30" tracking_level="1" version="0" object_id="_51">
                    <type>0</type>
                    <name>duplicateMat_Loop_Re_2_U0</name>
                    <ssdmobj_id>24</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_52">
                  <port class_id_reference="29" object_id="_53">
                    <name>src_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_51"/>
                </item>
                <item class_id_reference="28" object_id="_54">
                  <port class_id_reference="29" object_id="_55">
                    <name>p_src_rows_read_out</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_51"/>
                </item>
                <item class_id_reference="28" object_id="_56">
                  <port class_id_reference="29" object_id="_57">
                    <name>p_src_cols_read_out</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_51"/>
                </item>
                <item class_id_reference="28" object_id="_58">
                  <port class_id_reference="29" object_id="_59">
                    <name>p_dst2_cols_read_out</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_51"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_60">
              <type>0</type>
              <name>xFDuplicate637_U0</name>
              <ssdmobj_id>25</ssdmobj_id>
              <pins>
                <count>5</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_61">
                  <port class_id_reference="29" object_id="_62">
                    <name>src_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_63">
                    <type>0</type>
                    <name>xFDuplicate637_U0</name>
                    <ssdmobj_id>25</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_64">
                  <port class_id_reference="29" object_id="_65">
                    <name>dst_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_63"/>
                </item>
                <item class_id_reference="28" object_id="_66">
                  <port class_id_reference="29" object_id="_67">
                    <name>dst1_V_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_63"/>
                </item>
                <item class_id_reference="28" object_id="_68">
                  <port class_id_reference="29" object_id="_69">
                    <name>p_src_rows_read</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_63"/>
                </item>
                <item class_id_reference="28" object_id="_70">
                  <port class_id_reference="29" object_id="_71">
                    <name>p_src_cols_read</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_63"/>
                </item>
              </pins>
            </item>
            <item class_id_reference="26" object_id="_72">
              <type>0</type>
              <name>duplicateMat_Loop_2_2_U0</name>
              <ssdmobj_id>26</ssdmobj_id>
              <pins>
                <count>4</count>
                <item_version>0</item_version>
                <item class_id_reference="28" object_id="_73">
                  <port class_id_reference="29" object_id="_74">
                    <name>dst_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id="_75">
                    <type>0</type>
                    <name>duplicateMat_Loop_2_2_U0</name>
                    <ssdmobj_id>26</ssdmobj_id>
                  </inst>
                </item>
                <item class_id_reference="28" object_id="_76">
                  <port class_id_reference="29" object_id="_77">
                    <name>p_dst1_data_V</name>
                    <dir>2</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_75"/>
                </item>
                <item class_id_reference="28" object_id="_78">
                  <port class_id_reference="29" object_id="_79">
                    <name>dst1_V_V</name>
                    <dir>0</dir>
                    <type>0</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_75"/>
                </item>
                <item class_id_reference="28" object_id="_80">
                  <port class_id_reference="29" object_id="_81">
                    <name>p_dst2_data_V</name>
                    <dir>0</dir>
                    <type>1</type>
                  </port>
                  <inst class_id_reference="30" object_id_reference="_75"/>
                </item>
              </pins>
            </item>
          </process_list>
          <channel_list class_id="31" tracking_level="0" version="0">
            <count>6</count>
            <item_version>0</item_version>
            <item class_id="32" tracking_level="1" version="0" object_id="_82">
              <type>1</type>
              <name>src_V_V</name>
              <ssdmobj_id>10</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>8</bitwidth>
              <source class_id_reference="28" object_id="_83">
                <port class_id_reference="29" object_id="_84">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_51"/>
              </source>
              <sink class_id_reference="28" object_id="_85">
                <port class_id_reference="29" object_id="_86">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_63"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_87">
              <type>1</type>
              <name>p_src_rows_read_c</name>
              <ssdmobj_id>8</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>9</bitwidth>
              <source class_id_reference="28" object_id="_88">
                <port class_id_reference="29" object_id="_89">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_51"/>
              </source>
              <sink class_id_reference="28" object_id="_90">
                <port class_id_reference="29" object_id="_91">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_63"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_92">
              <type>1</type>
              <name>p_src_cols_read_c</name>
              <ssdmobj_id>7</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>10</bitwidth>
              <source class_id_reference="28" object_id="_93">
                <port class_id_reference="29" object_id="_94">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_51"/>
              </source>
              <sink class_id_reference="28" object_id="_95">
                <port class_id_reference="29" object_id="_96">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_63"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_97">
              <type>1</type>
              <name>p_dst2_cols_read_c</name>
              <ssdmobj_id>6</ssdmobj_id>
              <ctype>3</ctype>
              <depth>0</depth>
              <bitwidth>0</bitwidth>
              <source class_id="-1"/>
              <sink class_id="-1"/>
            </item>
            <item class_id_reference="32" object_id="_98">
              <type>1</type>
              <name>dst_V_V</name>
              <ssdmobj_id>13</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>8</bitwidth>
              <source class_id_reference="28" object_id="_99">
                <port class_id_reference="29" object_id="_100">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_63"/>
              </source>
              <sink class_id_reference="28" object_id="_101">
                <port class_id_reference="29" object_id="_102">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_75"/>
              </sink>
            </item>
            <item class_id_reference="32" object_id="_103">
              <type>1</type>
              <name>dst1_V_V</name>
              <ssdmobj_id>16</ssdmobj_id>
              <ctype>0</ctype>
              <depth>2</depth>
              <bitwidth>8</bitwidth>
              <source class_id_reference="28" object_id="_104">
                <port class_id_reference="29" object_id="_105">
                  <name>in</name>
                  <dir>3</dir>
                  <type>0</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_63"/>
              </source>
              <sink class_id_reference="28" object_id="_106">
                <port class_id_reference="29" object_id="_107">
                  <name>out</name>
                  <dir>3</dir>
                  <type>1</type>
                </port>
                <inst class_id_reference="30" object_id_reference="_75"/>
              </sink>
            </item>
          </channel_list>
          <net_list class_id="33" tracking_level="0" version="0">
            <count>0</count>
            <item_version>0</item_version>
          </net_list>
        </mDfPipe>
      </item>
    </cdfg_regions>
    <fsm class_id="34" tracking_level="1" version="0" object_id="_108">
      <states class_id="35" tracking_level="0" version="0">
        <count>6</count>
        <item_version>0</item_version>
        <item class_id="36" tracking_level="1" version="0" object_id="_109">
          <id>1</id>
          <operations class_id="37" tracking_level="0" version="0">
            <count>7</count>
            <item_version>0</item_version>
            <item class_id="38" tracking_level="1" version="0" object_id="_110">
              <id>6</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_111">
              <id>7</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_112">
              <id>8</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_113">
              <id>10</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_114">
              <id>13</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_115">
              <id>16</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_116">
              <id>24</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_117">
          <id>2</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_118">
              <id>24</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_119">
          <id>3</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_120">
              <id>25</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_121">
          <id>4</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_122">
              <id>25</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_123">
          <id>5</id>
          <operations>
            <count>1</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_124">
              <id>26</id>
              <stage>2</stage>
              <latency>2</latency>
            </item>
          </operations>
        </item>
        <item class_id_reference="36" object_id="_125">
          <id>6</id>
          <operations>
            <count>16</count>
            <item_version>0</item_version>
            <item class_id_reference="38" object_id="_126">
              <id>4</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_127">
              <id>5</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_128">
              <id>9</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_129">
              <id>11</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_130">
              <id>12</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_131">
              <id>14</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_132">
              <id>15</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_133">
              <id>17</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_134">
              <id>18</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_135">
              <id>19</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_136">
              <id>20</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_137">
              <id>21</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_138">
              <id>22</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_139">
              <id>23</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
            <item class_id_reference="38" object_id="_140">
              <id>26</id>
              <stage>1</stage>
              <latency>2</latency>
            </item>
            <item class_id_reference="38" object_id="_141">
              <id>27</id>
              <stage>1</stage>
              <latency>1</latency>
            </item>
          </operations>
        </item>
      </states>
      <transitions class_id="39" tracking_level="0" version="0">
        <count>5</count>
        <item_version>0</item_version>
        <item class_id="40" tracking_level="1" version="0" object_id="_142">
          <inState>1</inState>
          <outState>2</outState>
          <condition class_id="41" tracking_level="0" version="0">
            <id>-1</id>
            <sop class_id="42" tracking_level="0" version="0">
              <count>1</count>
              <item_version>0</item_version>
              <item class_id="43" tracking_level="0" version="0">
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_143">
          <inState>2</inState>
          <outState>3</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_144">
          <inState>3</inState>
          <outState>4</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_145">
          <inState>4</inState>
          <outState>5</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
        <item class_id_reference="40" object_id="_146">
          <inState>5</inState>
          <outState>6</outState>
          <condition>
            <id>-1</id>
            <sop>
              <count>1</count>
              <item_version>0</item_version>
              <item>
                <count>0</count>
                <item_version>0</item_version>
              </item>
            </sop>
          </condition>
        </item>
      </transitions>
    </fsm>
    <res class_id="44" tracking_level="1" version="0" object_id="_147">
      <dp_component_resource class_id="45" tracking_level="0" version="0">
        <count>5</count>
        <item_version>0</item_version>
        <item class_id="46" tracking_level="0" version="0">
          <first>duplicateMat_Loop_2_2_U0 (duplicateMat_Loop_2_2)</first>
          <second class_id="47" tracking_level="0" version="0">
            <count>2</count>
            <item_version>0</item_version>
            <item class_id="48" tracking_level="0" version="0">
              <first>FF</first>
              <second>67</second>
            </item>
            <item>
              <first>LUT</first>
              <second>228</second>
            </item>
          </second>
        </item>
        <item>
          <first>duplicateMat_Loop_Re_2_U0 (duplicateMat_Loop_Re_2)</first>
          <second>
            <count>2</count>
            <item_version>0</item_version>
            <item>
              <first>FF</first>
              <second>36</second>
            </item>
            <item>
              <first>LUT</first>
              <second>211</second>
            </item>
          </second>
        </item>
        <item>
          <first>start_for_duplicaAem_U (start_for_duplicaAem)</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>start_for_xFDuplizec_U (start_for_xFDuplizec)</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>xFDuplicate637_U0 (xFDuplicate637)</first>
          <second>
            <count>2</count>
            <item_version>0</item_version>
            <item>
              <first>FF</first>
              <second>77</second>
            </item>
            <item>
              <first>LUT</first>
              <second>195</second>
            </item>
          </second>
        </item>
      </dp_component_resource>
      <dp_expression_resource>
        <count>1</count>
        <item_version>0</item_version>
        <item>
          <first>ap_idle ( and ) </first>
          <second>
            <count>4</count>
            <item_version>0</item_version>
            <item>
              <first>(0P0)</first>
              <second>1</second>
            </item>
            <item>
              <first>(1P1)</first>
              <second>1</second>
            </item>
            <item>
              <first>FF</first>
              <second>0</second>
            </item>
            <item>
              <first>LUT</first>
              <second>2</second>
            </item>
          </second>
        </item>
      </dp_expression_resource>
      <dp_fifo_resource>
        <count>5</count>
        <item_version>0</item_version>
        <item>
          <first>dst1_V_V_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>8</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>16</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>20</second>
            </item>
          </second>
        </item>
        <item>
          <first>dst_V_V_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>8</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>16</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>20</second>
            </item>
          </second>
        </item>
        <item>
          <first>p_src_cols_read_c_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>10</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>20</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>22</second>
            </item>
          </second>
        </item>
        <item>
          <first>p_src_rows_read_c_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>9</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>18</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>21</second>
            </item>
          </second>
        </item>
        <item>
          <first>src_V_V_U</first>
          <second>
            <count>6</count>
            <item_version>0</item_version>
            <item>
              <first>(0Depth)</first>
              <second>2</second>
            </item>
            <item>
              <first>(1Bits)</first>
              <second>8</second>
            </item>
            <item>
              <first>(2Size:D*B)</first>
              <second>16</second>
            </item>
            <item>
              <first>BRAM</first>
              <second>0</second>
            </item>
            <item>
              <first>FF</first>
              <second>5</second>
            </item>
            <item>
              <first>LUT</first>
              <second>20</second>
            </item>
          </second>
        </item>
      </dp_fifo_resource>
      <dp_memory_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_resource>
      <dp_multiplexer_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_multiplexer_resource>
      <dp_register_resource>
        <count>0</count>
        <item_version>0</item_version>
      </dp_register_resource>
      <dp_dsp_resource>
        <count>5</count>
        <item_version>0</item_version>
        <item>
          <first>duplicateMat_Loop_2_2_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>duplicateMat_Loop_Re_2_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>start_for_duplicaAem_U</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>start_for_xFDuplizec_U</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
        <item>
          <first>xFDuplicate637_U0</first>
          <second>
            <count>0</count>
            <item_version>0</item_version>
          </second>
        </item>
      </dp_dsp_resource>
      <dp_component_map class_id="49" tracking_level="0" version="0">
        <count>3</count>
        <item_version>0</item_version>
        <item class_id="50" tracking_level="0" version="0">
          <first>duplicateMat_Loop_2_2_U0 (duplicateMat_Loop_2_2)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>26</item>
          </second>
        </item>
        <item>
          <first>duplicateMat_Loop_Re_2_U0 (duplicateMat_Loop_Re_2)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>24</item>
          </second>
        </item>
        <item>
          <first>xFDuplicate637_U0 (xFDuplicate637)</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>25</item>
          </second>
        </item>
      </dp_component_map>
      <dp_expression_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_expression_map>
      <dp_fifo_map>
        <count>5</count>
        <item_version>0</item_version>
        <item>
          <first>dst1_V_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>141</item>
          </second>
        </item>
        <item>
          <first>dst_V_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>131</item>
          </second>
        </item>
        <item>
          <first>p_src_cols_read_c_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>121</item>
          </second>
        </item>
        <item>
          <first>p_src_rows_read_c_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>110</item>
          </second>
        </item>
        <item>
          <first>src_V_V_U</first>
          <second>
            <count>1</count>
            <item_version>0</item_version>
            <item>99</item>
          </second>
        </item>
      </dp_fifo_map>
      <dp_memory_map>
        <count>0</count>
        <item_version>0</item_version>
      </dp_memory_map>
    </res>
    <node_label_latency class_id="51" tracking_level="0" version="0">
      <count>10</count>
      <item_version>0</item_version>
      <item class_id="52" tracking_level="0" version="0">
        <first>6</first>
        <second class_id="53" tracking_level="0" version="0">
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>7</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>8</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>10</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>13</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>16</first>
        <second>
          <first>0</first>
          <second>0</second>
        </second>
      </item>
      <item>
        <first>24</first>
        <second>
          <first>0</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>25</first>
        <second>
          <first>2</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>26</first>
        <second>
          <first>4</first>
          <second>1</second>
        </second>
      </item>
      <item>
        <first>27</first>
        <second>
          <first>5</first>
          <second>0</second>
        </second>
      </item>
    </node_label_latency>
    <bblk_ent_exit class_id="54" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="55" tracking_level="0" version="0">
        <first>28</first>
        <second class_id="56" tracking_level="0" version="0">
          <first>0</first>
          <second>5</second>
        </second>
      </item>
    </bblk_ent_exit>
    <regions class_id="57" tracking_level="0" version="0">
      <count>1</count>
      <item_version>0</item_version>
      <item class_id="58" tracking_level="1" version="0" object_id="_148">
        <region_name>duplicateMat.1</region_name>
        <basic_blocks>
          <count>1</count>
          <item_version>0</item_version>
          <item>28</item>
        </basic_blocks>
        <nodes>
          <count>24</count>
          <item_version>0</item_version>
          <item>4</item>
          <item>5</item>
          <item>6</item>
          <item>7</item>
          <item>8</item>
          <item>9</item>
          <item>10</item>
          <item>11</item>
          <item>12</item>
          <item>13</item>
          <item>14</item>
          <item>15</item>
          <item>16</item>
          <item>17</item>
          <item>18</item>
          <item>19</item>
          <item>20</item>
          <item>21</item>
          <item>22</item>
          <item>23</item>
          <item>24</item>
          <item>25</item>
          <item>26</item>
          <item>27</item>
        </nodes>
        <anchor_node>-1</anchor_node>
        <region_type>16</region_type>
        <interval>0</interval>
        <pipe_depth>0</pipe_depth>
      </item>
    </regions>
    <dp_fu_nodes class_id="59" tracking_level="0" version="0">
      <count>9</count>
      <item_version>0</item_version>
      <item class_id="60" tracking_level="0" version="0">
        <first>44</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>6</item>
        </second>
      </item>
      <item>
        <first>48</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>7</item>
        </second>
      </item>
      <item>
        <first>52</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>8</item>
        </second>
      </item>
      <item>
        <first>56</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>10</item>
        </second>
      </item>
      <item>
        <first>60</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>13</item>
        </second>
      </item>
      <item>
        <first>64</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>16</item>
        </second>
      </item>
      <item>
        <first>68</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>26</item>
          <item>26</item>
        </second>
      </item>
      <item>
        <first>78</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>25</item>
          <item>25</item>
        </second>
      </item>
      <item>
        <first>87</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>24</item>
          <item>24</item>
        </second>
      </item>
    </dp_fu_nodes>
    <dp_fu_nodes_expression class_id="62" tracking_level="0" version="0">
      <count>6</count>
      <item_version>0</item_version>
      <item class_id="63" tracking_level="0" version="0">
        <first>dst1_V_V_fu_64</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>16</item>
        </second>
      </item>
      <item>
        <first>dst_V_V_fu_60</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>13</item>
        </second>
      </item>
      <item>
        <first>p_dst2_cols_read_c_fu_44</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>6</item>
        </second>
      </item>
      <item>
        <first>p_src_cols_read_c_fu_48</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>7</item>
        </second>
      </item>
      <item>
        <first>p_src_rows_read_c_fu_52</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>8</item>
        </second>
      </item>
      <item>
        <first>src_V_V_fu_56</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>10</item>
        </second>
      </item>
    </dp_fu_nodes_expression>
    <dp_fu_nodes_module>
      <count>3</count>
      <item_version>0</item_version>
      <item>
        <first>grp_duplicateMat_Loop_2_2_fu_68</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>26</item>
          <item>26</item>
        </second>
      </item>
      <item>
        <first>grp_duplicateMat_Loop_Re_2_fu_87</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>24</item>
          <item>24</item>
        </second>
      </item>
      <item>
        <first>grp_xFDuplicate637_fu_78</first>
        <second>
          <count>2</count>
          <item_version>0</item_version>
          <item>25</item>
          <item>25</item>
        </second>
      </item>
    </dp_fu_nodes_module>
    <dp_fu_nodes_io>
      <count>0</count>
      <item_version>0</item_version>
    </dp_fu_nodes_io>
    <return_ports>
      <count>0</count>
      <item_version>0</item_version>
    </return_ports>
    <dp_mem_port_nodes class_id="64" tracking_level="0" version="0">
      <count>0</count>
      <item_version>0</item_version>
    </dp_mem_port_nodes>
    <dp_reg_nodes>
      <count>6</count>
      <item_version>0</item_version>
      <item>
        <first>97</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>6</item>
        </second>
      </item>
      <item>
        <first>102</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>7</item>
        </second>
      </item>
      <item>
        <first>108</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>8</item>
        </second>
      </item>
      <item>
        <first>114</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>10</item>
        </second>
      </item>
      <item>
        <first>120</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>13</item>
        </second>
      </item>
      <item>
        <first>126</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>16</item>
        </second>
      </item>
    </dp_reg_nodes>
    <dp_regname_nodes>
      <count>6</count>
      <item_version>0</item_version>
      <item>
        <first>dst1_V_V_reg_126</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>16</item>
        </second>
      </item>
      <item>
        <first>dst_V_V_reg_120</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>13</item>
        </second>
      </item>
      <item>
        <first>p_dst2_cols_read_c_reg_97</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>6</item>
        </second>
      </item>
      <item>
        <first>p_src_cols_read_c_reg_102</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>7</item>
        </second>
      </item>
      <item>
        <first>p_src_rows_read_c_reg_108</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>8</item>
        </second>
      </item>
      <item>
        <first>src_V_V_reg_114</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>10</item>
        </second>
      </item>
    </dp_regname_nodes>
    <dp_reg_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_reg_phi>
    <dp_regname_phi>
      <count>0</count>
      <item_version>0</item_version>
    </dp_regname_phi>
    <dp_port_io_nodes class_id="65" tracking_level="0" version="0">
      <count>2</count>
      <item_version>0</item_version>
      <item class_id="66" tracking_level="0" version="0">
        <first>p_dst2_data_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>26</item>
            </second>
          </item>
        </second>
      </item>
      <item>
        <first>p_src_data_V</first>
        <second>
          <count>1</count>
          <item_version>0</item_version>
          <item>
            <first>call</first>
            <second>
              <count>1</count>
              <item_version>0</item_version>
              <item>24</item>
            </second>
          </item>
        </second>
      </item>
    </dp_port_io_nodes>
    <port2core class_id="67" tracking_level="0" version="0">
      <count>3</count>
      <item_version>0</item_version>
      <item class_id="68" tracking_level="0" version="0">
        <first>1</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>2</first>
        <second>RAM</second>
      </item>
      <item>
        <first>3</first>
        <second>FIFO</second>
      </item>
    </port2core>
    <node2core>
      <count>6</count>
      <item_version>0</item_version>
      <item>
        <first>6</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>7</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>8</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>10</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>13</first>
        <second>FIFO</second>
      </item>
      <item>
        <first>16</first>
        <second>FIFO</second>
      </item>
    </node2core>
  </syndb>
</boost_serialization>
