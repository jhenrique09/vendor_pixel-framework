.class public final Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$3;->this$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string p1, "notification_enabled"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$3;->this$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;

    invoke-virtual {p0}, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->updateNotificationPreference()V

    goto :goto_2

    :cond_0
    const-string p1, "notification_response"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService$3;->this$0:Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;

    iget-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mContext:Landroid/content/Context;

    const-string p2, "screen_protector_shared_perf"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "notification_response"

    const/4 v0, -0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-byte p1, p1

    if-ne p1, v0, :cond_1

    goto :goto_2

    :cond_1
    const-string p2, "ScreenProtectorNotifierService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateNotificationResponse() response = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket;

    invoke-direct {p2}, Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket;-><init>()V

    iput-byte p1, p2, Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket;->response:B

    iget-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mServiceLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotifierService;->mDetectorService:Lcom/google/input/algos/spd/IScreenProtectorDetectorService;

    check-cast p0, Lcom/google/input/algos/spd/IScreenProtectorDetectorService$Stub$Proxy;

    invoke-virtual {p0, p2}, Lcom/google/input/algos/spd/IScreenProtectorDetectorService$Stub$Proxy;->updateNotifierPacket(Lcom/google/input/algos/spd/ScreenProtectorNotifierPacket;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p2, "ScreenProtectorNotifierService"

    const-string v0, "Failed to updateNotifierPacket."

    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method
