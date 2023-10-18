.class public final synthetic Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "PowerNotificationWarningsGoogleImpl"

    sget-object v1, Lcom/google/android/systemui/power/DumpUtils;->PROVIDER_URI:Landroid/net/Uri;

    const-string v1, "Failed to acquire provider: "

    iget-object p0, p0, Lcom/google/android/systemui/power/PowerNotificationWarningsGoogleImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    :try_start_0
    sget-object v2, Lcom/google/android/systemui/power/DumpUtils;->PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_0
    const-string v1, "prepareProviderDump"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v1

    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v1, "Failed to call Turbo provider"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method
