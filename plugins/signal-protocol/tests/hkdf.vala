// SPDX-FileCopyrightText: 2016-2020 Dino contributors <team@dino.im>
// SPDX-License-Identifier: GPL-3.0-or-later

namespace Signal.Test {

class HKDF : Gee.TestCase {

    public HKDF() {
        base("HKDF");
        add_test("vector_v3", test_hkdf_vector_v3);
    }

    private Context global_context;

    public override void set_up() {
        try {
            global_context = new Context();
        } catch (Error e) {
            fail_if_reached();
        }
    }

    public override void tear_down() {
        global_context = null;
    }

    public void test_hkdf_vector_v3() {
        uint8[] ikm = {
                0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b,
                0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b,
                0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b};

        uint8[] salt = {
                0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
                0x08, 0x09, 0x0a, 0x0b, 0x0c};

        uint8[] info = {
                0xf0, 0xf1, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6, 0xf7,
                0xf8, 0xf9};

        uint8[] okm = {
                0x3c, 0xb2, 0x5f, 0x25, 0xfa, 0xac, 0xd5, 0x7a,
                0x90, 0x43, 0x4f, 0x64, 0xd0, 0x36, 0x2f, 0x2a,
                0x2d, 0x2d, 0x0a, 0x90, 0xcf, 0x1a, 0x5a, 0x4c,
                0x5d, 0xb0, 0x2d, 0x56, 0xec, 0xc4, 0xc5, 0xbf,
                0x34, 0x00, 0x72, 0x08, 0xd5, 0xb8, 0x87, 0x18,
                0x58, 0x65};

        NativeHkdfContext context = null;
        fail_if_not_zero_int(NativeHkdfContext.create(out context, 3, global_context.native_context));

        uint8[] output = null;
        int result = (int) context.derive_secrets(out output, ikm, salt, info, 42);
        fail_if_not_eq_int(result, okm.length);
        output.length = result;

        fail_if_not_eq_uint8_arr(output, okm);
    }

}

}
