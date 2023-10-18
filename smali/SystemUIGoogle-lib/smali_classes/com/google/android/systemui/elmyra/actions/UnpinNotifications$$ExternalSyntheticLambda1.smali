.class public final synthetic Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll()V

    return-void
.end method
