
with source as (

    select * from {{ source('raw_marketo', 'lead_describe_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        data_type,
        display_name,
        length,
        restname,
        restread_only,
        soapname,
        soapread_only,
        partition_date

    from source

)

select * from renamed
