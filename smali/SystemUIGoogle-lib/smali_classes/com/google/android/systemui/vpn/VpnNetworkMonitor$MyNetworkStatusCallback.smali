.class public final Lcom/google/android/systemui/vpn/VpnNetworkMonitor$MyNetworkStatusCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/vpn/VpnNetworkMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$MyNetworkStatusCallback;->this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$MyNetworkStatusCallback;->this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    invoke-static {p0}, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->access$notifyNetworkChange(Lcom/google/android/systemui/vpn/VpnNetworkMonitor;)V

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$MyNetworkStatusCallback;->this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    invoke-static {p0}, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->access$notifyNetworkChange(Lcom/google/android/systemui/vpn/VpnNetworkMonitor;)V

    return-void
.end method
