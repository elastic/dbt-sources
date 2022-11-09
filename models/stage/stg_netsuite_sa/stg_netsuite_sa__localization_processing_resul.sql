
with source as (

    select * from {{ source('raw_netsuite_sa', 'localization_processing_resul') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name,
        localization_processing_res_ex

    from source

)

select * from renamed
