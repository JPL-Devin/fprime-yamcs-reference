# Project override of ComCcsdsSdlsConfig: AES-256-GCM encryptor/decryptor, matching YAMCS's
# SecurityAssociationAes256Gcm128 on SPI 1.

module ComCcsdsSdlsConfig {
    # Base ID for the ComCcsdsSdls Subtopology, all components are offsets from this base ID
    constant BASE_ID = 0x06000000
}

module ComCcsdsSdls {
    @ AES-256-GCM decryptor for uplinked TC frames (SA 1)
    instance decryptor: Svc.Ccsds.AesGcmDecryptor base id ComCcsdsSdlsConfig.BASE_ID + 0x02000

    @ AES-256-GCM encryptor for downlinked TM frames (SA 1)
    instance encryptor: Svc.Ccsds.AesGcmEncryptor base id ComCcsdsSdlsConfig.BASE_ID + 0x04000
}
