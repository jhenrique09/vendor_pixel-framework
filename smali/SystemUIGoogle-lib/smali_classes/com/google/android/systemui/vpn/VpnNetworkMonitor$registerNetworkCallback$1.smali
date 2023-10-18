.class public final Lcom/google/android/systemui/vpn/VpnNetworkMonitor$registerNetworkCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/vpn/VpnNetworkMonitor;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$registerNetworkCallback$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$registerNetworkCallback$1;->this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$registerNetworkCallback$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$registerNetworkCallback$1;->this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    iget-object v0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->networkCallback:Lcom/google/android/systemui/vpn/VpnNetworkMonitor$MyNetworkStatusCallback;

    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor$registerNetworkCallback$1;->this$0:Lcom/google/android/systemui/vpn/VpnNetworkMonitor;

    iget-object v0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->networkCallback:Lcom/google/android/systemui/vpn/VpnNetworkMonitor$MyNetworkStatusCallback;

    iget-object p0, p0, Lcom/google/android/systemui/vpn/VpnNetworkMonitor;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
