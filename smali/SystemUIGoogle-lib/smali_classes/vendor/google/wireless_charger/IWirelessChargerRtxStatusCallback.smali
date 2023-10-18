.class public interface abstract Lvendor/google/wireless_charger/IWirelessChargerRtxStatusCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    const-string v2, "vendor$google$wireless_charger$IWirelessChargerRtxStatusCallback"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/google/wireless_charger/IWirelessChargerRtxStatusCallback;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method
