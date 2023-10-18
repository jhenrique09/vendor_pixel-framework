.class public final Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source ""


# instance fields
.field public final contentResolver:Landroid/content/ContentResolver;

.field public final userHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/os/UserHandle;)V
    .locals 4

    new-instance v0, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    sget-object v1, Lcom/google/android/systemui/backup/BackupHelperGoogle;->SECURE_SETTINGS_INT_KEYS:Ljava/util/List;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/android/systemui/backup/BackupHelperGoogle;->SECURE_SETTINGS_STRING_KEYS:Ljava/util/List;

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    iget-object v0, v0, Lkotlin/jvm/internal/SpreadBuilder;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->contentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->userHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 5

    sget-object v0, Lcom/google/android/systemui/backup/BackupHelperGoogle;->SECURE_SETTINGS_INT_KEYS:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BackupHelper"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Failed to restore "

    if-eqz v0, :cond_3

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_7

    array-length v0, p2

    if-nez v0, :cond_1

    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iget-object v0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    goto :goto_4

    :goto_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw p0

    :cond_3
    sget-object v0, Lcom/google/android/systemui/backup/BackupHelperGoogle;->SECURE_SETTINGS_STRING_KEYS:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    if-nez v0, :cond_7

    array-length v0, p2

    if-nez v0, :cond_5

    move v2, v3

    :cond_5
    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iget-object v0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {v0, p1, p2, p0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    :try_start_3
    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    throw p0

    :cond_7
    :goto_4
    return-void
.end method

.method public final getBackupPayload(Ljava/lang/String;)[B
    .locals 5

    sget-object v0, Lcom/google/android/systemui/backup/BackupHelperGoogle;->SECURE_SETTINGS_INT_KEYS:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BackupHelper"

    const-string v2, "Failed to backup "

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_1
    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_4

    :goto_1
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    throw p0

    :cond_0
    sget-object v0, Lcom/google/android/systemui/backup/BackupHelperGoogle;->SECURE_SETTINGS_STRING_KEYS:Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->contentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/google/android/systemui/backup/BackupHelperGoogle$SecureSettingsBackupHelper;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-static {v0, p1, p0}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_4

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_3
    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    :try_start_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_4

    :goto_3
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    throw p0

    :catch_2
    :cond_2
    :goto_4
    return-object v3
.end method
