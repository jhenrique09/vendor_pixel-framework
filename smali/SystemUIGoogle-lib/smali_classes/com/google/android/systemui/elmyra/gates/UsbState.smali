.class public final Lcom/google/android/systemui/elmyra/gates/UsbState;
.super Lcom/google/android/systemui/elmyra/gates/TransientGate;
.source ""


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mUsbConnected:Z

.field public final mUsbReceiver:Lcom/google/android/systemui/elmyra/gates/UsbState$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;I)V
    .locals 2

    int-to-long v0, p3

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/systemui/elmyra/gates/TransientGate;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;J)V

    new-instance p2, Lcom/google/android/systemui/elmyra/gates/UsbState$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/elmyra/gates/UsbState$1;-><init>(Lcom/google/android/systemui/elmyra/gates/UsbState;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/UsbState;->mUsbReceiver:Lcom/google/android/systemui/elmyra/gates/UsbState$1;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/UsbState;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/UsbState;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "connected"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/systemui/elmyra/gates/UsbState;->mUsbConnected:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/UsbState;->mUsbReceiver:Lcom/google/android/systemui/elmyra/gates/UsbState$1;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/UsbState;->mUsbReceiver:Lcom/google/android/systemui/elmyra/gates/UsbState$1;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/UsbState;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
