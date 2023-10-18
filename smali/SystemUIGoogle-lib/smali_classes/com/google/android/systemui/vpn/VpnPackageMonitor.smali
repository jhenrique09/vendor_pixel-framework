.class public final Lcom/google/android/systemui/vpn/VpnPackageMonitor;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final context:Landroid/content/Context;

.field public isRegistered:Z

.field public final packageMonitorBroadcastReceiver:Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;

.field public final userFileManager:Lcom/android/systemui/settings/UserFileManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final wildlifeFeatureBroadcastReceiver:Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "VpnPackageMonitor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p3, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p4, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    iput-object p5, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance p1, Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;-><init>(Lcom/google/android/systemui/vpn/VpnPackageMonitor;I)V

    iput-object p1, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->wildlifeFeatureBroadcastReceiver:Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;

    new-instance p1, Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;-><init>(Lcom/google/android/systemui/vpn/VpnPackageMonitor;I)V

    iput-object p1, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->packageMonitorBroadcastReceiver:Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;

    return-void
.end method


# virtual methods
.method public final registerPackageMonitorReceiver()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->isRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->packageMonitorBroadcastReceiver:Lcom/google/android/systemui/vpn/VpnPackageMonitor$packageMonitorBroadcastReceiver$1;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/systemui/vpn/VpnPackageMonitor;->isRegistered:Z

    return-void
.end method
