.class public abstract Lcom/google/android/systemui/gesture/GestureModule_ProvidsBackGestureTfClassifierProviderFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providsBackGestureTfClassifierProvider(Ljava/lang/String;)Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/gesture/BackGestureTfClassifierProviderGoogle;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
