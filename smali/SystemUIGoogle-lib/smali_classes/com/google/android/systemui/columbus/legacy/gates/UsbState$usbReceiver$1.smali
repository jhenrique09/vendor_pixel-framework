.class public final Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/UsbState;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/UsbState;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/UsbState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/UsbState;

    const-string p1, "connected"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;-><init>(ZLcom/google/android/systemui/columbus/legacy/gates/UsbState;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p2, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_0
    return-void
.end method
