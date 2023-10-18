.class public final synthetic Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda6;->f$0:Lcom/google/android/systemui/reversecharging/ReverseChargingController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/systemui/reversecharging/ReverseChargingController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/reversecharging/ReverseChargingController$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/systemui/reversecharging/ReverseChargingController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
