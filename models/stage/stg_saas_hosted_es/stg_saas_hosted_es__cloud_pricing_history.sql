
with source as (

    select * from {{ source('raw_saas_hosted_es', 'cloud_pricing_history') }}

),

renamed as (

    select
        id,
        productid,
        productname,
        capacity,
        provider,
        region,
        highavailability,
        level,
        ssd,
        nodetype,
        clustertype,
        currency,
        currencyrate,
        totalpricehourly,
        totalpriceannual,
        totalpricemonthly,
        netsuite_item_id,
        product_display_name,
        partition_date

    from source

)

select * from renamed
