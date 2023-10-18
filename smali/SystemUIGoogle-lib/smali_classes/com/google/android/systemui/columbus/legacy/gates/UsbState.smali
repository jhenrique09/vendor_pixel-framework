.class public final Lcom/google/android/systemui/columbus/legacy/gates/UsbState;
.super Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;
.source ""


# instance fields
.field public final context:Landroid/content/Context;

.field public final gateDuration:J

.field public usbConnected:Z

.field public final usbReceiver:Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState;->context:Landroid/content/Context;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState;->gateDuration:J

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/UsbState;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState;->usbReceiver:Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState;->usbReceiver:Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$onActivate$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$onActivate$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/UsbState;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    invoke-static {p0, v2, v2, v1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState;->usbReceiver:Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
