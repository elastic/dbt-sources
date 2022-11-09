
with source as (

    select * from {{ source('raw_netsuite_sa', 'payment_file_administration_due_batch_details_map') }}

),

renamed as (

    select
        batch_details_id,
        payment_file_administration_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
