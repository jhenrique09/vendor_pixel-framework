.class public final Lcom/google/android/systemui/vpn/VpnNetworkMonitor;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastReceiver:Lcom/google/android/systemui/vpn/VpnNetworkMonitor$broadcastReceiver$1;

.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final connectivityManager:Landroid/net/ConnectivityManager;

.field public final executor:Ljava/util/concurrent/Executor;

.field public isRegistered:Z

.field public final networkCallback:Lcom/google/android/systemui/vpn/VpnNetworkMonitor$MyNetworkStatusCallback;

.field public final uiExecutor:Ljava/util/concurrent/Executor;

.field public final userFileManager:Lcom/android/systemui/settings/UserFileManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final userTrackerCallback:Lcom/google/android/systemui/vpn/VpnNetworkMonitor$userTrackerCallback$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "VpnNetworkMonitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p3, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p4, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->uiExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->executor:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    iput-object p7, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance p1, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$broadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$broadcastReceiver$1;-><init>(Lcom/google/android/systemui/vpn/VpnNetworkMonitor;)V

    iput-object p1, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->broadcastReceiver:Lcom/google/android/systemui/vpn/VpnNetworkMonitor$broadcastReceiver$1;

    new-instance p1, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$userTrackerCallback$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$userTrackerCallback$1;-><init>(Lcom/google/android/systemui/vpn/VpnNetworkMonitor;)V

    iput-object p1, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userTrackerCallback:Lcom/google/android/systemui/vpn/VpnNetworkMonitor$userTrackerCallback$1;

    new-instance p1, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$MyNetworkStatusCallback;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$MyNetworkStatusCallback;-><init>(Lcom/google/android/systemui/vpn/VpnNetworkMonitor;)V

    iput-object p1, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->networkCallback:Lcom/google/android/systemui/vpn/VpnNetworkMonitor$MyNetworkStatusCallback;

    return-void
.end method

.method public static final access$notifyNetworkChange(Lcom/google/android/systemui/vpn/VpnNetworkMonitor;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VpnNetworkMonitor"

    const-string v1, "notifyNetworkChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.apps.privacy.wildlife.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.apps.privacy.wildlife"

    const-string v2, "com.google.android.apps.privacy.wildlife.receiver.WildlifeVpnReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {p0, v0}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final registerNetworkCallback()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-boolean v0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->isRegistered:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$registerNetworkCallback$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$registerNetworkCallback$1;-><init>(Lcom/google/android/systemui/vpn/VpnNetworkMonitor;I)V

    iget-object v1, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->isRegistered:Z

    :cond_0
    return-void
.end method

.method public final unregisterNetworkCallback()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-boolean v0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->isRegistered:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$registerNetworkCallback$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$registerNetworkCallback$1;-><init>(Lcom/google/android/systemui/vpn/VpnNetworkMonitor;I)V

    iget-object v1, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->isRegistered:Z

    :cond_0
    return-void
.end method
