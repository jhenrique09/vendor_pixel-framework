.class final Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.systemui.columbus.legacy.gates.UsbState$usbReceiver$1$onReceive$1$1"
    f = "UsbState.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $newUsbConnected:Z

.field label:I

.field final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/UsbState;


# direct methods
.method public constructor <init>(ZLcom/google/android/systemui/columbus/legacy/gates/UsbState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;->$newUsbConnected:Z

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/UsbState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;->$newUsbConnected:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/UsbState;

    invoke-direct {p1, v0, p0, p2}, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;-><init>(ZLcom/google/android/systemui/columbus/legacy/gates/UsbState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;->$newUsbConnected:Z

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState$usbReceiver$1$onReceive$1$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/UsbState;

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState;->usbConnected:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState;->usbConnected:Z

    iget-wide v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/UsbState;->gateDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;->blockForMillis(J)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
