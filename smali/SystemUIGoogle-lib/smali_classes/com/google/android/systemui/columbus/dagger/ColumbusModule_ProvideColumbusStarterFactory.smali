.class public abstract Lcom/google/android/systemui/columbus/dagger/ColumbusModule_ProvideColumbusStarterFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideColumbusStarter(Ldagger/Lazy;)Lcom/google/android/systemui/columbus/ColumbusStarter;
    .locals 1

    sget-object v0, Lcom/android/systemui/flags/Flags;->TEAMFOOD:Lcom/android/systemui/flags/UnreleasedFlag;

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/ColumbusStarter;

    return-object p0
.end method
