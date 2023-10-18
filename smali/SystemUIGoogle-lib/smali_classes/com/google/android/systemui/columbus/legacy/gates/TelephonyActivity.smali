.class public final Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity;
.super Lcom/google/android/systemui/columbus/legacy/gates/Gate;
.source ""


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public isCallBlocked:Z

.field public final phoneStateListener:Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity$phoneStateListener$1;

.field public final telephonyListenerManager:Ldagger/Lazy;

.field public final telephonyManager:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/legacy/gates/Gate;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity;->telephonyManager:Ldagger/Lazy;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity;->telephonyListenerManager:Ldagger/Lazy;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    new-instance p1, Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity$phoneStateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity$phoneStateListener$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity;->phoneStateListener:Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity$phoneStateListener$1;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity;->telephonyListenerManager:Ldagger/Lazy;

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity;->phoneStateListener:Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity$phoneStateListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    new-instance v0, Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity$onActivate$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity$onActivate$1;-><init>(Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->coroutineScope:Lkotlinx/coroutines/internal/ContextScope;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/Gate;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v3, p0, v1, v0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity;->telephonyListenerManager:Ldagger/Lazy;

    check-cast v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity;->phoneStateListener:Lcom/google/android/systemui/columbus/legacy/gates/TelephonyActivity$phoneStateListener$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/telephony/TelephonyListenerManager;->removeCallStateListener(Landroid/telephony/TelephonyCallback$CallStateListener;)V

    return-void
.end method
