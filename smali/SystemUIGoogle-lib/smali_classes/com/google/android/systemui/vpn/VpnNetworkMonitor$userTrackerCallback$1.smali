.class public final Lcom/google/android/systemui/vpn/VpnNetworkMonitor$userTrackerCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/vpn/VpnNetworkMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$userTrackerCallback$1;->this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    iget-object p1, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    iget-object p2, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    check-cast p2, Lcom/android/systemui/settings/UserFileManagerImpl;

    const-string v0, "network_monitor_index"

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences$1(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "network_monitor_enabled"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->registerNetworkCallback()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->unregisterNetworkCallback()V

    :goto_0
    return-void
.end method
