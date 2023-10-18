.class public abstract Lcom/google/android/systemui/columbus/dagger/ColumbusModule_ProvideQuickTapActionsFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideQuickTapActions()Ljava/util/List;
    .locals 1

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object v0
.end method
