.class public final Lcom/google/android/systemui/power/batteryhealth/HealthUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final healthManager:Lcom/google/android/systemui/power/batteryhealth/HealthManager;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthUpdateReceiver;->healthManager:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "HealthUpdateReceiver"

    const-string p2, "Start new BHI update"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lkotlinx/coroutines/CoroutineScopeKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p1

    new-instance p2, Lcom/google/android/systemui/power/batteryhealth/HealthUpdateReceiver$onReceive$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/systemui/power/batteryhealth/HealthUpdateReceiver$onReceive$1;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthUpdateReceiver;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method
