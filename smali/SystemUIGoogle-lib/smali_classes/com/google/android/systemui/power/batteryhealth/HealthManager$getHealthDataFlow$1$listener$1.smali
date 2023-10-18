.class public final Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$listener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$getHealthDataFlow$1$listener$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p0, Lkotlinx/coroutines/channels/ProducerCoroutine;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/channels/ProducerCoroutine;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
