import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:widhya/widgets/postWidget.dart';

Widget middleCards1({story, imageUrl, user, userUrl}) {
  return Container(
    height: 570,
    width: 590,
    child: Card(
      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
      elevation: 7,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, top: 15),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'data:image/png;base64,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'),
                  radius: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dribbble',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '111,234 followers',
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(15, 30, 10, 10),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
          ),
          Container(
            width: 750,
            height: 300,
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
              child: Image.network(
                'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAU4AAACXCAMAAABNy0IIAAABgFBMVEX39/eMYjkzMzP2m3b4wJ1NTU14TyfiS0v7+/v///90SyN/VS3GxsZBQUFvQxPKysqIXC2ZmZmwnY708/LHspmKXzRGQj6igme1n4vn4t2adVMgICDd3d2KXjNdXV3Q0NBqOgAZGRnpS0vhOjpmRkbz3t6mj3skKi3BOjrp6emmhG+Pj4+KZz1cQiopKSn32MW5ubnWXFPojW2dlpDbh2Z7e3u6AAD2nXiuxNBVVVWga1amTDUAAADXvpj/vWD64sW6noDwxMTzpovZmJi9HBzOcHDUiIj2lGu/zdXRpIdCTU1sbGzqzs6/LCzHU1PjVVXnfX3ep6e8EhL3so723dSrq6t3d3fLv7VlMgALGyFZTUaOcmLanZ3juLiSdmXpjo7laGj20764kXlpWU/ANDTMSEj4xabJW1vuj3vql5f2vqi0bXTQd3fysKPxgmP21KzmWU3pa1zfsHb0w7nyoo6eaVTe08cAIiq9trB3TDVTNjhnTU2bTEy1TEyMTEyykpK1h+VkAAALW0lEQVR4nO2djV8SaR7AR434PQYZjdYhBAiNMdIha6tk692lIm4hFgJSGqWtL5vnde1t5+1etfev3/PM6zNvzICajTzfj59dhhlmmG/P83veB45jMBgMBoPBYDAYDAaDwWAwGAwMILDjor+WT0EjidiElYURJrQHIDSRH7QhlmQ6e4AP28lkOnsBEEpOMJ1nBCpsVhL2NpnOrkGRhbxt3GQ6ewDEmJNLprN7cJnOdJ4dEGKp8wxx0Sle9PfzGR11xnLoor+fz9B03rPycvOiv53vUHTe25qy8PbJNIucXaLovHXFjumL/nbfKM5dbVAgOu9tM52eAeFVuc3ZC4VmjIRJptMzsFat7lXX15QOYoQ4UdB3Fl5uv95mOrtgfy+bze5Vy4vt2qs3z3eeBTOLWlKF0BPs7ckU0+kVoZSV2M9k0phgMP1cz/iwayuS6XRElHXuPwsqZHh9J1y5srREGdzW0unbn5hOO2CFZPasbrNGlUpEJ50gb/2kiR1kOm0Avlyt4sSp2kzvGPaaMvv2Wy11bjOdVtDafqnW3tsLaolzzVBl4g9sguZSncVOO4BbnlsXhMPqupY435groA1rabT0M9NpAwjrG8tQK2UFIaP6tPS5QcOq8+MS02kGEBa5xh/OlXkApSTKtK3HWXXaV5Rs54l04uvc5lcChMONMrRL2UWEN2oZpRziLQcadX7U/2/SmQx1h3iZfKJ2tbrGrcyt8NJd8XLiFGyO5O101nF2bxjOlxsMd8nl8Qniytwxh1vrbaVDHb3B7aHMO9vudYPO+kfNapQ+CCUCHYZB7JiIXxadsLhXanPljUNBvSNYw7n9mTWnE3ZNPuv1+s+kqmQ4CCUcZt5cep245o7zOKlwUsUB7NBdHwaMuZ00O6V654Hh6L7VidayWOTyxrpA3w4ujJ47jKQ59IMYQmef6sT1kzIWKazPLZt6jEXbckjGrml0YDykL3XC4rvvqq9QbWN/zZwUYc357uyamqY424864V0mnX4mSDV3684OH7T6jJqO6EeduC2ZzQYzWUvSdAWmjTndUgfoQ524NpTNZtM7NknTHSqB7pqTJteXOknbJ+tYH+oE/gQc1WWmbZvb/agT2iR22lfWHT/D8dHGdKPRUHXu4tdR3hxqT6WTx5zJDX5l+FK5VnKuEFkAaBwtrcrUlaxelLaWjowCTqMz/vDHhw99mVQPV4SNtvdvvltcHVLRdMqbq6uGf5bT6my2u/hX/laAcpYrlb3qhCNdJkZps2vbS/R5etYJIhCdf5975b/0CYsbwnHWYzUJfjXYHCrWDTaHVv9BHdyrThArks4ffRk8hVLNa/CE5Q/FISPFIv1O8f2OfnTPOiMLcaKz9U+b2tc3D9r3HDzFtEWnGarO1XNmL+REovMvf/3bed3zOQLlEpf1FjxxE8rFZjFdO73OyETSxzrbG8LKuqdDPej8cBY6wz7WyYmldnvDuuLCphqNdb7vnNuLv/S9Tm79WJizNjNFprMnUDnLV63BU+R5c5LFOn9x0fn+9DohEo77WCcJnsfrppqn6KDTrWhfPbVOMR5JhEKFwsPRf518hbs/e8S5dq1qUuekMyjrnDk3nVDIRVRyvuxhQtljYcM0kOGoc6izzqFfO+oMB3ScdEZ8rhPKe9zeslknLtntdM5IyXPGyefqqXVGEjq+fFCLVPM8tPvmpsKd6Hx/3jqbOR1/rj8WSu3aBqWOH1V43DKUUESnUrRbfM4o7xydYWaP+DKzc7BeFuao4KnrfNyKUndk0EkJJRvFel3aI/XRSYMdPerM6Xl9PuRLnai8z1eX7XTiP6pbh+j8oOvUwFtyTzI2WuSAb0wfLfHRg21pVXGMZpDSGbOQ58kyMN9ndmjPiXTwpHSi0VH9fWlGMq1TTZ7aWo46fk2GOoaGyCjnE0IrSRHRk2ciaYHMR7wEmZ0TjDVPWucJpVOa8mlXANWvUD5lqMkh+uxiVKB0Wh9iR65xGXTCfpmueVI6+cctak7dYiaTsWu1F606dcPURDCgdTosofW9TuD5YxI8eVGZvUAVRY9HDUcKtVcfbVJnUYmc2iickv8PGg3D1KW+0PlGWncZTKfTz+SOJSp1mscXAE2v2vgko+3YZbGu6Sw2GtO7B1c4fhcQkkp7hDFkdiTvMF3A5zrhnbbkRZ0KT+m03o9g1Tkz9OjfhEeP8J/M1INmpImJRPBfpKloas4G5hUCCWmHdZWNz3WinTSlU0qeoOk8sUk+S7RIme//Y33OCl0DWkgicUGqCumVzLy0I2KZBenvNjvwz7+jqEUllMg5GrVhF9ePZr43snWrI1vxaNT+kN8sp//tgc6I9q5PvEJr7D7N2A2JgTHCwMANOwa6547Tp8YsZx8zfkxhyheD7hDtRc4FcMMmin97QMsnOu9M+kInS51nCrTuXLQpD4zdmLxoUR4B7trVb53hqZ4mm18I6OqwF64TPB/oHU+nnPTPgxfRwDUP3L+JmfxB5vc/O/H7D49udoeXi1/1RTkkg8bHPASv2wgAKU9gSN99Kje7pUXThv70/wZrSMXL8wAQ5yV03vjTpdNJbkjTGbCgir03OBio5JqFpMh7yqA802mnU7UqtcbzuD0+EY54KT+YzmD6k6NOekAtNuihB4Pp7KyT8pmfd8/vTGenzG7QORhzT55MZzD9+alHne6TYphOzN2nMo6lkaKzwHR60ZneX//y5fPnP/64++nTViBgUDs4oXW6x5pMZwedHD0OklYIBvf3id0/lMTZjIcKuTzT6UGnsJNJO/FFTp/hJAKkPKqfZfbOOoET/nfXAaX2FE6C8jB0ptNNJz66sqD+6qD62xv35E1lNlc4Tul0nwHX5zo5cUSlIAfIfC5JtpI5G52souSmU3uKJIrLvwM10ZT6jlAzrOtsKjrdJxT2vU4ViM/Lc1rlAIkiTCehV50cII7MyVTmGak6AyJwqJlnjcxudcpxVJ1khHKUzogSVpnO0+vkmM6z0Kk0MnnyWtHp/rRYplPHoHNWtjnP0Tpdr8506tjqJEtgZpU+EPd5WkynjkHnpqITUTrdr850agA/khxRw6OqM0F0bio62eBGFzrFeCgUiitPZUAVSmeF6exWJ8Tlpk9e7tRUdVYonWGmswudC3kCbrNLp0nIOjcpnQGm01UnLyokN2cJmwVpi1d0zhKdCVknGxh20wl6B92IupRS3pindcqhM8F0uujkRhxQdZIfbUbzclStMJ1edMbjcZIkk3EJ5R1ZZ5jp7FanCABYYlzpRybZH4BTdJJ1VyDPXcjPMp3uOkmfMODUqZ6AvAaOV3RK1Sams3ednKRTDOg6+bBUssdyTKerzqSkEwdP7Qy4bMc6N7e2tiqVChnq4CuJwK1b8wn3WQv9rhMKTVlns6AmPUg2Q4gDGB5O8cqSaoRuX0+d2CyvttDfOlEzFiM/ISYGYuqMGYgPxmK4LDpJDV+vcIjjsVmOvzqcOsHFFM+7/B5ef+sU81JIRDncXp+Q++ZIEygf4ODm9eHhlw8m71+7PxVF2G0qejI5fm3gdatjAO1rnVK3R34TSR2aytM2kVSM82hcXlRE/pNqEbf3U/JGx1Usfa2Tg0QsvxACCC3kY/PK5yML+YlZJBoWX41Tr1+0Osjob50cH5kNkXbPyKy2MAMVNpsA0cnJ168nVaYmKW72qc6xOyb0PVpFSSm7AekhEeRHpwC1Msu4RqvD1Smdzlf3l07thm5b0Hed0w1ROp2vfsdPOm+rK0lTUfMav2hK3ff6vG5oQLu6+SeJUeu6tsTVRzrHX6RkXpgfYAJRbdf4eaXOqyn1EuZRZGhpV/eRTk7UHgdjGRbn9QfInNfVO1xBv7r79AcGg8FgMBgMBoPBYDAYDAaD4TP+D/zfbwwAxMa2AAAAAElFTkSuQmCC',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 15),
            child: Row(
              children: [
                Text(
                  '112 Likes',
                  style: TextStyle(
                    color: Colors.pink,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '0 comments',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  '0 share',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: 15, left: 20, right: 10),
              child: Row(
                children: [
                  LikeButton(
                    size: 30,
                    circleColor:
                        CircleColor(start: Colors.pink, end: Colors.pink[400]),
                    bubblesColor: BubblesColor(
                      dotPrimaryColor: Colors.pink[300],
                      dotSecondaryColor: Colors.pink,
                    ),
                    likeBuilder: (bool isLiked) {
                      return Icon(
                        Icons.favorite,
                        color: isLiked ? Colors.pink : Colors.grey,
                        size: 28,
                      );
                    },
                    countBuilder: (int count, bool isLiked, String text) {
                      Widget result;

                      return result;
                    },
                  ),
                  IconButton(icon: Icon(Icons.message), onPressed: null),
                  Spacer(),
                  IconButton(icon: Icon(Icons.share), onPressed: null)
                ],
              ))
        ],
      ),
    ),
  );
}

final middleCards = [middleCards1(), PostWidget()];
