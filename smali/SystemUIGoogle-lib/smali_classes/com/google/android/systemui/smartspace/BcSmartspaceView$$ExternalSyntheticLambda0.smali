.class public final synthetic Lcom/google/android/systemui/smartspace/BcSmartspaceView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/app/smartspace/SmartspaceTarget;

    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getSmartspaceTargetId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
